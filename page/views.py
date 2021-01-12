from django.shortcuts import render, redirect

from photo.models import Photo
from blog.models import Post


def index(request):
	context = {
    'title' : 'Home',
		'photos' : Photo.objects.all()

	}
	return render(request, 'page/index.html',  context)

def aboutMe(request):
	return render(request, 'page/aboutMe.html', {'title':'About'})

def contactMe(request):
	return render(request, 'page/contactMe.html',{'title':'Contact Me'})

import pdb; pdb.set_trace()
