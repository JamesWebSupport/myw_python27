from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
#from django.conf import settings
from django.urls import reverse

class Subject(models.Model):
	name = models.CharField(max_length=100, unique = True)
	description = models.CharField(max_length=255)

	def __str__(self):
		return self.name

class Post(models.Model):
	title = models.CharField(max_length=100)
	content = models.TextField()
	author = models.ForeignKey(User, on_delete=models.CASCADE,default='')
	subject = models.ForeignKey(Subject, on_delete=models.CASCADE,default='')
	created_at = models.DateTimeField(default=timezone.now())
	updated_at = models.DateTimeField(auto_now=True,blank=True)


	def __str__(self):
		return self.title

	def get_absolute_url(self):
#		if (self._state.adding is True):
#			return reverse('blog:blog-home')
#		else:
		return reverse('blog:post-detail',kwargs={'pk':self.pk})



class Comment(models.Model):
	content = models.TextField(max_length=4000)
	post = models.ForeignKey(Post, on_delete = models.CASCADE,default='')
	created_at = models.DateTimeField(default=timezone.now())
	updated_at = models.DateTimeField(auto_now=True,blank=True)
	author = models.ForeignKey(User, on_delete=models.CASCADE)

	def __str__(self):
		return self.post.title + '_comment'

	def get_absolute_url(self):
		return reverse('blog:post-detail',kwargs={'pk':self.post.pk})

