# Generated by Django 2.2 on 2019-04-23 12:03

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20190423_0800'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='date_posted',
            field=models.DateTimeField(default=datetime.datetime(2019, 4, 23, 12, 3, 6, 236209, tzinfo=utc)),
        ),
    ]
