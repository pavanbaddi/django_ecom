# Generated by Django 3.2.7 on 2021-09-21 06:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='productmodel',
            name='featured_image',
            field=models.CharField(default='hi', max_length=255),
            preserve_default=False,
        ),
    ]
