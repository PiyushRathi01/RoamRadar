# Generated by Django 3.2.1 on 2021-05-16 19:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sample', '0009_auto_20210516_1954'),
    ]

    operations = [
        migrations.AddField(
            model_name='buses',
            name='day',
            field=models.CharField(default='Friday', max_length=10),
        ),
        migrations.AddField(
            model_name='flights',
            name='day',
            field=models.CharField(default='Wednesday', max_length=10),
        ),
    ]
