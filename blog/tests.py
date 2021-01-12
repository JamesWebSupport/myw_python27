from django.test import TestCase
#new to version 2.2, before was django.core.urlresolvers
from django.urls import reverse
from django.urls import resolve
from .views import home

class HomeTests (TestCase):
	def test_home_status_code(self):
		url = reverse('home')
		response = self.client.get(url)
		self.assertEquals(response.status_code, 200)
	def test_home_url_resovles_home_view(self):
		view = resolve('/')
		self.assertEquals(view.func, home)
