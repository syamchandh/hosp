# Generated by Django 2.2.14 on 2022-04-29 06:34

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('hospitals', '0006_remove_patient_password'),
    ]

    operations = [
        migrations.AddField(
            model_name='patient',
            name='forn',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
    ]
