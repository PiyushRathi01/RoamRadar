# Generated by Django 3.2.1 on 2021-05-18 19:48

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sample', '0015_travelsdata'),
    ]

    operations = [
        migrations.RenameField(
            model_name='buses',
            old_name='arrival_place',
            new_name='arrivalplace',
        ),
        migrations.RenameField(
            model_name='buses',
            old_name='departure_palce',
            new_name='departurepalce',
        ),
    ]
