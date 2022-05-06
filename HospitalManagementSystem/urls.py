"""HospitalManagementSystem URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from hospitals.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('about/', About, name="about"),
    path('',Index,name='index'),
    path('contact', contact, name='contact'),
    path('login/', adminlogin, name='login'),
    path('admin_home', admin_home, name='admin_home'),
    path('logout', Logout, name='logout'),
    path('add_doctor', add_doctor, name='add_doctor'),
    path('view_doctor', view_doctor, name='view_doctor'),
    path('delete_doctor/<int:pid>', Delete_Doctor, name='delete_doctor'),
    path('add_patient', add_patient, name='add_patient'),
    path('view_patient', view_patient, name='view_patient'),
    path('delete_patient/<int:pid>', Delete_Patient, name='delete_patient'),
    path('add_appointment', add_appointment, name='add_appointment'),
    path('add_pat_appointment', add_pat_appointment, name='add_pat_appointment'),
    path('view_appointment', view_appointment, name='view_appointment'),
    path('delete_appointment/<int:pid>', Delete_Appointment, name='delete_appointment'),
    path('edit_doctor/<int:pid>',edit_doctor,name='edit_doctor'),
    # path('patient_view/<int:pid>',patient_view,name='patient_view'),
    path('edit_patient/<int:pid>',edit_patient,name='edit_patient'),
    # path('user_suc_page/<int:id>',user_suc_page,name='user_suc_page'),
    path('unread_queries', unread_queries, name='unread_queries'),
    path('read_queries', read_queries, name='read_queries'),
    path('view_queries/<int:pid>', view_queries, name='view_queries'),
    path('signupp',signup, name='signup'),
    path('patient_home',patient_home,name='patient_home'),
    path('approval/<int:pk>', approval, name='approval'),
    path('mail', maill, name='maill'),
    path('sendmail', sendmail, name='sendmail')


]