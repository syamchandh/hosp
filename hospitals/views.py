


from urllib import request
from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,logout,login
from django.contrib.auth.models import User,auth
from .models import *
from datetime import date
from django.contrib import messages
from django.core.mail import send_mail
from django.conf import settings
# Create your views here.



def About(request):
    return render(request,'about.html')

def Index(request):
    return render(request,'index.html')

def contact(request):
    error = ""
    if request.method == 'POST':
        n = request.POST['name']
        c = request.POST['contact']
        e = request.POST['email']
        s = request.POST['subject']
        m = request.POST['message']
        try:
            Contact.objects.create(name=n, contact=c, email=e, subject=s, message=m, msgdate=date.today(), isread="no")
            error = "no"
        except:
            error = "yes"
    return render(request, 'contact.html', locals())

def add_patient(request):
    error = ""
    if not request.user.is_staff:
        return redirect('login')
    if request.method == 'POST':
        n = request.POST['name']
        g = request.POST['gender']
        m = request.POST['mobile']
        a = request.POST['address']
        try:
            Patient.objects.create(name=n, gender=g, mobile=m, address=a)
            error = "no"
        except:
            error = "yes"
    return render(request,'add_patient.html', locals())

def signup(request):
    error = ""
    if request.method == 'POST':
        n = request.POST['name']
        g = request.POST['gender']
        e=request.POST['email']
        m = request.POST['mobile']
        a = request.POST['address']
        p=request.POST['password']
        c=request.POST['cpass']
        if p==c:
            if Patient.objects.filter(name=n).exists():
                # error= "user_name"
                messages.info(request,'Username exists! Please try another name !')
                return redirect('signup')
            else:
               
                                    
                varauth=User.objects.create_user(username=n,
                                                password=p,email=e)
                varauth.save()
                var_varauth=User.objects.get(id=varauth.id)
                
                varuser=Patient.objects.create(name=n,
                                      gender=g,
                                      mobile=m,
                                      address=a,
                                      emailv=e,
                                      forn=var_varauth)
                
                varuser.save()
                
                messages.info(request,'Success creating the user '+varuser.name+' , Now login')
                error = "no"
                return redirect('signup')
        else:
            messages.info(request,'Ohoo!! password not macthing !')
            error = "yes"
            print('password error')
            return redirect('signup')
    return render(request, 'signup.html')

def adminlogin(request):
    # error = ""
    # if request.method == 'POST':
    #     u = request.POST['uname']
    #     p = request.POST['pwd']
    #     user = authenticate(username=u, password=p)
    #         try:
    #             if user.is_staff:
    #                 login(request, user)
    #                 error = "no"
    #             else:
    #                 error = "yes"
    #         except:
    #             error = "yes"
    #         return render(request,'login.html', locals())
    error = ""
    if request.method == 'POST':
        u = request.POST['uname']
        p = request.POST['pwd']
        user = authenticate(username=u, password=p)
        try:
            if user.is_staff:
                login(request, user)
                error = "no"
            elif not user.is_staff:
                login(request, user)
                error = "nop"
        except:
            error = "yes"
    return render(request,'login.html', locals())
        
        ## if varuser.is_staff:
            
        #     c=auth.login(request,varuser)
        # #    print(c)

            #messages.info(request,f'welcome {varname}')
            # messages.success(request, 'You have been successfully logged in')
            # messages.success(request,f'{varname} You have been successfully logged out')
            ## return redirect('admin_home')
        
        
            

            
            
        ## elif not varuser.is_staff:
        #     auth.login(request,varuser)
        # #    return redirect('patient_home')
            #messages.success(request,'user You have been successfully logged out')
            #print("user logged in")
            # the_id=Patient.objects.get(name=u).pk  #used to take id from a table
            # return render('user_login',the_id)
            
            # the_id=Patient.objects.get(name=u).pk  #used to take id from a table
            # print(the_id)
            # global kk
            # kk=Patient.objects.filter(id=the_id).all()
            # print(kk)
            # return redirect('user_suc_page')
            # context={'us':kk}
            # # print kk.name
            # # print kk.gender
            # return render(request,'patient_nav.html',context)
        
            
    ##     else:
    #         # auth.login(request,varuser)
    #         messages.info(request,'invalid username or password')
    #         return redirect('login')
    ## return render(request,'login.html')

# def user_login(request,id):
#     Patient.objects.get(name=u).exists()
#     if(u==Patient.name & p==Patient.password):
#         print('success')
#         return render(request,'admin_home.html')


#     p=Patient.objects.filter(category=id).all()
#     print(p)
#     context={'product':p}
#     return render(request,"usershow.html",context)


# def user_suc_page(request,id):
#     kk=id
#     print("id is"+id)
#     context={'us':kk}
#             # print kk.name
#             # print kk.gender
#     return render(request,'patient_nav.html',context)



def admin_home(request):
    # if request.user.is_staff:
    #     return redirect('login_admin')
        dc = Doctor.objects.all().count()
        pc = Patient.objects.all().count()
        ac = Appointment.objects.all().count()

        d = {'dc': dc, 'pc': pc, 'ac': ac}
        return render(request,'admin_home.html', d)

    # else:
    #     patient=User.objects.get(id=pid)
    #     print(patient)
    #     pat=Patient.objects.get.all()
    #     return render(request,'patient_nav.html', locals())

def Logout(request):
    logout(request)
    return redirect('/')

def add_doctor(request):
    error=""
    if not request.user.is_staff:
        return redirect('login')
    if request.method=='POST':
        n = request.POST['name']
        m = request.POST['mobile']
        sp = request.POST['special']
        try:
            Doctor.objects.create(name=n,mobile=m,special=sp)
            error="no"
        except:
            error="yes"
    return render(request,'add_doctor.html')

def view_doctor(request):
    if not request.user.is_staff:
        return redirect('login')
    doc = Doctor.objects.all()
    d = {'doc':doc}
    return render(request,'view_doctor.html', d)

def Delete_Doctor(request,pid):
    if not request.user.is_staff:
        return redirect('login')
    doctor = Doctor.objects.get(id=pid)
    doctor.delete()
    return redirect('view_doctor.html')

def edit_doctor(request,pid):
    error = ""
    if not request.user.is_authenticated:
        return redirect('login')
    user = request.user
    doctor = Doctor.objects.get(id=pid)
    if request.method == "POST":
        n1 = request.POST['name']
        m1 = request.POST['mobile']
        s1 = request.POST['special']

        doctor.name = n1
        doctor.mobile = m1
        doctor.special = s1

        try:
            doctor.save()
            error = "no"
        except:
            error = "yes"
    return render(request, 'edit_doctor.html', locals())

def add_patient(request):
    error = ""
    if not request.user.is_staff:
        return redirect('login')
    if request.method == 'POST':
        n = request.POST['name']
        g = request.POST['gender']
        m = request.POST['mobile']
        a = request.POST['address']
        try:
            Patient.objects.create(name=n, gender=g, mobile=m, address=a)
            error = "no"
        except:
            error = "yes"
        
    return render(request,'add_patient.html', locals())

def view_patient(request):
    # if not request.user.is_staff:
    #     return redirect('login')
    pat = Patient.objects.all()
    d = {'pat':pat}
    return render(request,'view_patient.html', d)

def Delete_Patient(request,pid):
    if not request.user.is_staff:
        return redirect('login')
    patient = Patient.objects.get(id=pid)
    patient.delete()
    return redirect('view_patient.html')

# def patient_view(request,pid):
    # patient=User.objects.get(id=pid)
    # print(patient)

    # # pat=Patient.objects.get.all()
    # return render(request,'patient_nav.html', locals())
    



def edit_patient(request,pid):
    error = ""
    if not request.user.is_authenticated:
        return redirect('login')
    user = request.user
    patient = Patient.objects.get(id=pid)
    if request.method == "POST":
        n1 = request.POST['name']
        m1 = request.POST['mobile']
        g1 = request.POST['gender']
        a1 = request.POST['address']

        patient.name = n1
        patient.mobile = m1
        patient.gender = g1
        patient.address = a1
        try:
            patient.save()
            error = "no"
        except:
            error = "yes"
    return render(request, 'edit_patient.html', locals())



def add_appointment(request):
    error=""
    # if not request.user.is_staff:
    #     return redirect('login')
    doctor1 = Doctor.objects.all()
    patient1 = Patient.objects.all()
    # pat_object=Patient.objects.filter(forn=request.user)
    if request.method=='POST':
        d = request.POST['doctor']
        p = request.POST['patient']
        d1 = request.POST['date']
        t = request.POST['time']
        doctor = Doctor.objects.filter(name=d).first()
        patient = Patient.objects.filter(name=p).first()
        try:
            Appointment.objects.create(doctor=doctor, patient=patient, date1=d1, time1=t)
            error="no"
        except:
            error="yes"
        
        
    d = {'doctor':doctor1,'patient':patient1,'error':error}
    return render(request,'add_appointment.html', d)

def add_pat_appointment(request):
    error=""
    # if not request.user.is_staff:
    #     return redirect('login')
    doctor1 = Doctor.objects.all()
    patient1 = Patient.objects.all()
    pat_object=Patient.objects.filter(forn=request.user)
    if request.method=='POST':
        d = request.POST['doctor']
        p = request.POST['patient']
        d1 = request.POST['date']
        t = request.POST['time']
        doctor = Doctor.objects.filter(name=d).first()
        patient = Patient.objects.filter(name=p).first()
        try:
            Appointment.objects.create(doctor=doctor, patient=patient, date1=d1, time1=t)
            error="no"
        except:
            error="yes"
        messages.info(request,'Your Appointment is under review.Kindly check your email for confirmation mail')
    d = {'doctor':doctor1,'patient':patient1,'error':error,'pn':pat_object}
    return render(request,'add_pat_appointment.html', d)

def view_appointment(request):
    if not request.user.is_staff:
        return redirect('login')
    appointment = Appointment.objects.all()
    # emailll=Patient.objects.filter(forn=request.user)
    d = {'appointment':appointment}
    return render(request,'view_appointment.html', d)


def approval(request,pk):
    
    appr1 = Appointment.objects.get(id=pk)
    if appr1.apporval_status==True:
        appr1.apporval_status=False
    else:
        appr1.apporval_status=True
    
    
    appr1.save()
    return redirect('view_appointment')



def Delete_Appointment(request,pid):
    if not request.user.is_staff:
        return redirect('login')
    appointment1 = Appointment.objects.get(id=pid)
    appointment1.delete()
    return redirect(request,'view_appointment.html',locals())

# def app_status(request,pid):
#     if not request.user.is_staff:
#         return redirect('login')
#     appointment1 = Appointment.objects.get(id=pid)
#     status=
#     appointment1.delete()
#     return redirect(request,'view_appointment.html',locals())

def unread_queries(request):
    if not request.user.is_authenticated:
        return redirect('login')
    contact = Contact.objects.filter(isread="no")
    return render(request,'unread_queries.html', locals())

def read_queries(request):
    if not request.user.is_authenticated:
        return redirect('login')
    contact = Contact.objects.filter(isread="yes")
    return render(request,'read_queries.html', locals())

def view_queries(request,pid):
    if not request.user.is_authenticated:
        return redirect('login')
    contact = Contact.objects.get(id=pid)
    contact.isread = "yes"
    contact.save()
    return render(request,'view_queries.html', locals())


def patient_home(request):
    # pc = Patient.objects.all().count()
    pat_object=Patient.objects.filter(forn=request.user)
    # for i in pat_object:
    #     print(i.emailv)
    for i in pat_object:
        c=i.emailv
        print(c)
    # kk=.objects.filter(forn=request.user)
    # c=pat_object.emailv
    # print(c)
    
    
    doc = Doctor.objects.all()
    appr1 = Appointment.objects.filter(patient=pat_object)
    
    
    
    return render(request,'patient_home.html',{'apprv':appr1,'docvar':doc,'pat_objectvar':pat_object})

def maill(request):
    # if request.method=='POST':
    #     # mailvar = Patient.objects.get(emailv)
    #     # Patient.objects.filter(forn=request.user)
    #     # pat_object=Patient.objects.filter(forn=request.user)
    #     appo=Appointment.objects.all()
    #     # for i in appo:  
    #     #     recipient=i.appo.emailv    
    #     # print(recipient)
    #     recipient=Patient.cleaned_data.get()

    
    #     subject='LEARNING THE PROTOCOL'
    #     message='Dear candidate,\n We are pleased to inform you that you are selected for an internship in our company\n \nGreetings,\nfrom infox technologies'
        
    #     send_mail(subject,message,settings.EMAIL_HOST_USER,[recipient])
    #     print("success sending mail")
    #     return redirect('patient_home')
    # return render(request,'view_appointment.html')
 
        
    appointment = Appointment.objects.all()
    # emailll=Patient.objects.filter(forn=request.user)
    d = {'appointment':appointment}
    return render(request,'mail.html', d)

def sendmail(request):
    if request.method=='POST':
        error=""
        subject='APPOINTMENT WITH DOCTOR SUCCESSFUL'
        message='Sir,\nWe are pleased to inform you that Your hospital appointment is successful.\nPlease be on time to avoid any issues.\nThank you'
        recipient=request.POST['stemail']
        print(recipient)
        
        send_mail(subject,message,settings.EMAIL_HOST_USER,[recipient])
        print('success')
        messages.info(request,'CONFIRMATION MAIL DELIVERY SUCCESSFUL')
        return render(request,'admin_home.html')
        
    return render(request,'mail.html')
    
    

