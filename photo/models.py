#2019-05-03 Photo class: high resolution photo for demo
from django.db import models
from django.utils import timezone
from PIL import Image
from django.urls import reverse

class Photo(models.Model):
	title = models.CharField(max_length=100)
	alt = models.CharField(max_length=255)
	created_at = models.DateTimeField(default=timezone.now())
	image = models.ImageField(default='demo.jpg',upload_to='demo_pics')
	image_sm = models.ImageField(default='demo.jpg',upload_to='demo_pics_sm')

	def __str__(self):
		return self.title

	def save(self):
		super().save()

		img = Image.open(self.image_sm.path)
		length_o,width_o = img.size
	#	output_size = (300, int(width_o*300/length_o))
		output_size = (300, 240)
		img.thumbnail(output_size)
		img.save(self.image_sm.path)

	def get_absolute_url(self):
		return self.image.url
