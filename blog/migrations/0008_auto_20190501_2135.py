# Generated by Django 2.2 on 2019-05-02 01:35

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20190501_1952'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='date_posted',
            field=models.DateTimeField(default=datetime.datetime(2019, 5, 2, 1, 35, 0, 63414, tzinfo=utc)),
        ),
    ]
