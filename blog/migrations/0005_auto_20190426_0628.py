# Generated by Django 2.2 on 2019-04-26 10:28

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20190423_0803'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='date_posted',
            field=models.DateTimeField(default=datetime.datetime(2019, 4, 26, 10, 28, 17, 229008, tzinfo=utc)),
        ),
    ]
