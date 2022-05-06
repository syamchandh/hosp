from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Doctor(models.Model):
    name = models.CharField(max_length=50)
    mobile = models.CharField(max_length=50)
    special = models.CharField(max_length=50)

    def __str__(self):
       return self.name

class Patient(models.Model):
    name = models.CharField(max_length=50)
    gender = models.CharField(max_length=10)
    mobile = models.IntegerField(null=True)
    address = models.CharField(max_length=50)
    emailv=models.CharField(max_length=50)
    forn=models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    
    
    

    def __str__(self):
       return self.name

class Appointment(models.Model):
    doctor = models.ForeignKey(Doctor,on_delete=models.CASCADE)
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    
    date1 = models.DateField()
    time1 = models.TimeField()
    apporval_status=models.BooleanField(default=False)

    def __str__(self):
       return self.doctor.name+"--"+self.patient.name;

class Contact(models.Model):
    name = models.CharField(max_length=100, null=True)
    contact = models.CharField(max_length=15, null=True)
    email = models.CharField(max_length=50, null=True)
    subject = models.CharField(max_length=100, null=True)
    message = models.CharField(max_length=300, null=True)
    msgdate = models.DateField(null=True)
    isread = models.CharField(max_length=10,null=True)

    def __str__(self):
        return self.id
