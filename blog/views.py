#draft
from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import ListView,DetailView,CreateView,UpdateView,DeleteView
from .models import Post
from .models import Comment
from .models import Subject
from django.core.paginator import Paginator

#
#	List all Posts created by author
#
def ListAuthorPosts(request, author_id):

#	context = {
#		'posts': Post.objects.filter(author = author_id)
#		}
#	return render(request, 'blog/home.html',context)
		author_posts = Post.objects.filter(author = author_id)
		paginator = Paginator(author_posts, 2)
		page = request.GET.get('page')
		posts = paginator.get_page(page)
		return render(request, 'blog/post_author_list.html', {"posts": posts})


#
# List all Posts by subject
#
def ListSubjectPost(request,subj):
	select_subject = Subject.objects.filter(name = subj)
	select_subject_id = select_subject[0].id
	subject_posts = Post.objects.filter(subject = select_subject_id)
	paginator = Paginator(subject_posts, 2)
	page = request.GET.get('page')
	posts = paginator.get_page(page)
	return render(request, 'blog/post_author_list.html', {"posts": posts})

#	context = {
#		'posts' : Post.objects.filter(subject = select_subject_id)
#	}
#	return render(request, 'blog/home.html', context)


#
#	List All Posts
#
class PostListView(ListView):
	model = Post
	template_name = 'blog/home.html'
	context_object_name = 'posts'
	ordering = ['-created_at']
	paginate_by = 5

#
#	Delete a post
#
class PostDetailView(DetailView):
	model = Post

	def get_context_data(self, **kwargs):
		post_id = self.object.id
		context = super(DetailView,self).get_context_data(**kwargs)
		context['comments']=Comment.objects.filter(post = post_id)[:5]
		return context
#
#	Create New Post
#
class PostCreateView(LoginRequiredMixin,CreateView):
	model = Post
	fields = ['title','content', 'subject']

	def form_valid(self, form):
		# instance = sending object
		form.instance.author = self.request.user
		return super().form_valid(form)

#
#	Update Post
#
class PostUpdateView(LoginRequiredMixin,UserPassesTestMixin,UpdateView):
	model = Post
	fields = ['title','content']


	def form_valid(self, form):
		form.instance.author = self.request.user
		return super().form_valid(form)

	def test_func(self):
		post = self.get_object()
		if self.request.user == post.author:
			return True
		return False
#
#	Delete a Post
#
class PostDeleteView(LoginRequiredMixin,UserPassesTestMixin,DeleteView):
	model = Post
	success_url = '/blog'

	def test_func(self):
		post = self.get_object()
		if self.request.user == post.author:
			return True
		return False
#
# List all comment for certain Post
#
def CommentListView(request, pk):
	post_comments = Comment.objects.filter(post_id = pk)
	post_title = Post.objects.filter(id = pk)[0].title
	paginator = Paginator(post_comments, 2)
	page = request.GET.get('page')
	comments = paginator.get_page(page)
	return render(request, 'blog/comment_list.html',
		{"comments": comments,
		"post_id" : pk, # create a new comment must link to certain post
		"post_title" : post_title})
#
#	List one comment
#
class CommentDetailView(DetailView):
	model = Comment

	def get_context_data(self, **kwargs):
		post_id = self.object.id
		context = super(DetailView,self).get_context_data(**kwargs)
		context ['post_id'] = self.object.post_id
		context ['post_title'] = self.object.post.title
		return context

#
#	Create a comment
#
class CommentCreateView(LoginRequiredMixin,CreateView):
	model = Comment
	fields = ['content']

	def form_valid(self, form):
		form.instance.author = self.request.user
		pid = self.request.get_full_path()
		pids = pid.rsplit("/")
		pid = int(pids[-1])
		form.instance.post_id = pid
		return super().form_valid(form)

#
#	Update a comment
#
class CommentUpdateView(LoginRequiredMixin,UserPassesTestMixin,UpdateView):
	model = Comment
	fields = ['content']

	def form_valid(self, form):
		form.instance.author = self.request.user
		return super().form_valid(form)

	def test_func(self):
		comment = self.get_object()
		if self.request.user == comment.author:
			return True
		return False
#
#	Delete a comment
#
class CommentDeleteView(LoginRequiredMixin,UserPassesTestMixin,DeleteView):
	model = Comment
	success_url = '/blog'

	def test_func(self):
		comment = self.get_object()
		if self.request.user == comment.author:
			return True
		return False
