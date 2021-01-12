#each app contains one urls.py
#project include those urls.py
#mywService/urls.py include this file

from django.urls import path,re_path
from . import views
from .views import PostListView, PostDetailView,PostCreateView,PostUpdateView,PostDeleteView, ListAuthorPosts,CommentListView
from .views import CommentCreateView,CommentUpdateView,CommentDeleteView,CommentDetailView


app_name = 'blog'
urlpatterns = [
	#ex: /blog/
	#path('',views.home, name='blog-home'),
	path('',PostListView.as_view(), name='blog-home'),
	#display individual post
	path('post/<int:pk>/', PostDetailView.as_view(), name='post-detail'),
	path('post/new',PostCreateView.as_view(), name='post-create'),
	path('post/<int:pk>/update', PostUpdateView.as_view(),name='post-update'),
	path('post/<int:pk>/delete', PostDeleteView.as_view(),name='post-delete'),
	path('post/author/<int:author_id>', views.ListAuthorPosts, name='post-author'),
	re_path(r'^post/(?P<subj>[\w.@+-]+)/$', views.ListSubjectPost, name = 'post-subject'),

	path('post/comment/<int:pk>', CommentDetailView.as_view(), name='comment-detail'),
	path('post/comment/new/<int:pk>',CommentCreateView.as_view(), name='comment-create'),
	path('post/comment/<int:pk>/update', CommentUpdateView.as_view(),name='comment-update'),
	path('post/comment/<int:pk>/delete', CommentDeleteView.as_view(),name='comment-delete'),
	path('post/comment/<int:pk>/list', CommentListView,name='comment-list')
]
