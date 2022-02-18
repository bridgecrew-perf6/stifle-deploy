from django.core.checks import messages
from django.db.backends.utils import logger
from django.http.response import HttpResponse
from django.shortcuts import render,redirect
from discounting.models import FuzzyScore
from django.contrib.auth.backends import BaseBackend
from django.contrib.auth.hashers import check_password
from django.contrib.auth.models import User 
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from .models import * 
from django.contrib.auth.decorators import login_required
from django.db import connection
import logging
from django.contrib.auth.models import Group


logger = logging.getLogger('django')


#@login_required(login_url="login")
def dashboard(request):
      return render(request,"base/dashbord.html")


@login_required(login_url="login")
def listmanagment(request):
    context={}
    
        


    context['fuzzyScore'] =FuzzyScore.objects.get(id=1)
    
    return render(request,"admindashboard/list_managment.html",context)
#@login_required(login_url="login")
def updateFuzzyScore(request):
    #Entry.objects.filter(blog=b).update(headline='Everything is the same')
    

    if request.method=="GET":
        newValue=request.GET.get("sanctionRange")
        print(newValue)
        val= int(newValue)
        FuzzyScore.objects.filter(id=1).update(score=val)

        return HttpResponse(request,"Data has been saved sussessfuly")
    else:
        return render(request,"admindashboard/list_managment.html")



@login_required(login_url="login")
def createuser(request):

    if request.method=="POST":
        if request.POST.get("password1")==request.POST.get("password2"):
            try:
                user=User.objects.get(username=request.POST.get("employee_name"))
                return render ()
                
            except User.DoesNotExist:
                user=User.objects.create_user(username=request.POST.get("employee_name"),password=request.POST.get("password1"),email=request.POST.get("email"))
                bank_name=request.POST.get("bank_name")
                bank_code=request.POST.get("bank_code")
                employee_code=request.POST.get("employee_code")
                designation=request.POST.get("designation")
                employee_status=request.POST.get("employee_status")
                contact_number=request.POST.get("contact_number")
                user_role=request.POST.get("user_role")
                if user_role =="other":
                    user_role==request.POST.get("user_role_other")
                
                action_required=request.POST.get("action_required")
                hod_name=request.POST.get("hod_name")
                hod_designation=request.POST.get("hod_designation")
                hod_cell_phone=request.POST.get("hod_cell_phone")
                hod_email=request.POST.get("hod_email")
                extended= extendedUser.objects.create(
                                bank_name=bank_name, 
                                bank_code=bank_code,
                                employee_code=employee_code,
                                designation=designation,
                                employee_status=employee_status,
                                contact_number=contact_number,
                                action_required=action_required,
                                hod_name=hod_name,
                                hod_designation=hod_designation,
                                hod_cell_phone=hod_cell_phone,
                                hod_email=hod_email,
                                user=user
                                  )

                print("user role is ",user_role)
                if(user_role.lower()=='l1'):
                    my_group = Group.objects.get(name='L1') 
                    my_group.user_set.add(user)
                elif (user_role.lower()=='l2'):
                    my_group = Group.objects.get(name='L2') 
                    my_group.user_set.add(user)
                elif(user_role.lower()=='mlro'):
                    my_group = Group.objects.get(name='MLRO') 
                    my_group.user_set.add(user)
                else:
                    pass
                    

                
                messages.success(request, 'Your data has been saved successfully!')
                return render(request,'admindashboard/create_user.html')
    else:
        return render(request,'admindashboard/create_user.html')






def insertDefaultValues(request):

    with connection.cursor() as cursor:
        cursor.execute("""INSERT INTO tenant1.redflags_demotable VALUES 
                    (1,'Accountant, Auditor and Tax Advisor','Medium',30),(2,'Agriculturist','Low',20),
                    (3,'Arms/ Ammunition Dealers','High',40),(4,'High valuable/ Precious Metal Dealers 
                    (e.g.  Gold, Silver, Diamond, Ruby, Antique, etc Dealers)','High',40),(5,'High Net worth customers with no 
                    clearly identifiable source of income, etc','High',40),(6,'Housewives/ Widows/ Households','High',40),
                    (7,'Investment and Comodity Advisor','Medium',30),(8,'Land Lords','High',40),(9,'Landady','High',40),
                    (10,'Lawyers','High',40),(11,'Minors','Low',20),(12,'Non Residents, Foreign Nationals','High',40),
                    (13,'Notaries','Low',20),(14,'Old Auto Parts and/ or Metal Scrap Dealers','High',40),(15,'Pensioner','Low',10),
                    (16,'Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives','High',60),
                    (17,'Real-Estate Dealer/Agent','Medium',30),(18,'Retired Person','Low',10),(19,'Salaried individual, Pension Holders and like Customers','Low',10),(20,'Security Brokers-Dealer (Such as Shares, Mutual Funds etc.)','Medium',30),
                    (21,'Self Employed/ Proprietorship','Low',10),(22,'Minors, Students, Unemployed','Low',20),(23,'Trader of General Items','Medium',30),
                    (24,'Travel/Tourism Agent','Medium',30),(25,'Government Entities (Local/Provincal/State/Federal) / Public Administration','Medium',30),(26,'All other Customers not Specified above','High',40);
                    """)
       
        logger.info("red flags inserted successfuly")

        cursor.execute("""
        
        
        
        """)


