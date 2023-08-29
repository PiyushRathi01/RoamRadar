# Generated by Django 3.2.1 on 2021-05-14 22:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sample', '0003_auto_20210512_1751'),
    ]

    operations = [
        migrations.CreateModel(
            name='DemoDate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=10)),
                ('demodate', models.DateField()),
            ],
            options={
                'db_table': 'demodata_table',
            },
        ),
    ]
