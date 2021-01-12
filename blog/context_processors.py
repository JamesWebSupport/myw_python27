from blog.models import Post,Subject

def add_variable_to_context(request):
  return {
    'newposts' : Post.objects.all().order_by('-id')[:3],
    'allsubjects' : Subject.objects.all().order_by('-id')
  }
