# Generated by Django 2.2.14 on 2022-05-04 09:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospitals', '0010_auto_20220504_1434'),
    ]

    operations = [
        migrations.AlterField(
            model_name='doctor',
            name='mobile',
            field=models.CharField(max_length=50),
        ),
    ]