# Generated by Django 2.2.14 on 2022-04-29 06:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('hospitals', '0005_auto_20220428_1010'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='patient',
            name='password',
        ),
    ]
