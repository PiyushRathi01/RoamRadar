# Generated by Django 3.2.1 on 2021-05-18 12:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sample', '0014_visitingdata'),
    ]

    operations = [
        migrations.CreateModel(
            name='TravelsData',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('travels', models.CharField(max_length=100)),
                ('population', models.PositiveIntegerField()),
            ],
            options={
                'db_table': 'TravelsData_table',
            },
        ),
    ]