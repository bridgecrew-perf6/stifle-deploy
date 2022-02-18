from django.contrib.auth.decorators import login_required
from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from django.http import HttpRequest
from django.views.decorators.csrf import csrf_exempt
# Create your views here.
from identification.models import  *
import riskrating
from riskrating.searchTable import IndividualTable
from .models import *
from datetime import timedelta, date
import sqlalchemy
import pandas as pd
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.views.generic import View
from django.template.loader import get_template
from .utils import render_to_pdf
from django.db import connection
from django.core.mail import send_mail


#@login_required(login_url="login")     
#@csrf_exempt
def riskrating(request):
     #individualRisk = Individual.objects.all()
     #engine = sqlalchemy.create_engine('mysql+pymysql://root:saim123@localhost:3306/compliance')     
     engine = sqlalchemy.create_engine('postgresql://postgres:saim123@localhost:5432/compliancedb')
     #individualRisk= pd.read_sql_query("""SELECT DISTINCT (customer_id),customer_id,customer_type,product_type,delivery_channel,diligence_type,
     #                                       customer_name,over_all_discount_status,risk_score,risk_category,pep_status,identification_individual.city
     #                                       FROM identification_individual
     #                                       LEFT JOIN discounting_individuldiscount  ON identification_individual.customer_id = discounting_individuldiscount.individual_id
     #                                       WHERE over_all_discount_status='Pending' or over_all_discount_status='Rejected' or over_all_discount_status='Proceed';""",engine)
     schema_name = connection.schema_name
     individualRisk= pd.read_sql_query(f"""SELECT DISTINCT (customer_id),customer_id,customer_type,product_type,delivery_channel,diligence_type,
                                            customer_name,over_all_discount_status,risk_score,risk_category,pep_status,identification_individual.city
                                            FROM {schema_name}.identification_individual
                                            LEFT JOIN {schema_name}.discounting_individuldiscount  ON {schema_name}.identification_individual.customer_id = {schema_name}.discounting_individuldiscount.individual_id
                                            WHERE over_all_discount_status='Pending' or over_all_discount_status='Rejected' or over_all_discount_status='Proceed';""",engine)
     
     #people = IndividualTable()

     return render(request,"riskRating/risk_rating.html",{'individualRisk': individualRisk                                                         
                                                          })
    # return render(request,"riskRating/risk_rating.html")


#def eddModule(request):

#     return render(request,"riskRating/edd.html")

@login_required(login_url="login")     
@csrf_exempt
def showCustomer(request, id):
    context = {}
    cid=id
    showCustomerObject = Individual.objects.get(customer_id=id)
    #{'showCustomerObject': showCustomerObject}
    context['showCustomerObject'] = showCustomerObject
    context['DeliveryChannel'] = DeliveryChannel.objects.all()
    context['ProductType'] = ProductType.objects.all()
    context['GeographicLocation'] = GeographicLocation.objects.all() 
    context['CustomerType'] = CustomerType.objects.all() 
    context['id']=cid
    return render(request,"riskRating/showCustomer.html",context)
     

@login_required(login_url="login")     
@csrf_exempt
def updateEDD(request):
    
    print("in update edd")
    if  request.method=="POST":
        customer_id=request.POST.get("customer_id")
        print(customer_id)
        #verifiedDoc=request.POST.get("verifieddoc")
        verifiedDoc=request.FILES.get("verifieddoc")
        approval_doc=request.FILES.get("approval_doc")
        edd_remarks=request.POST.get("edd_remarks")
        print(verifiedDoc)
        obj=CustomerEDD.objects.filter(individual__customer_id=customer_id)
        print("after filtering ")
        if not obj:
            ind_obj=Individual.objects.get(customer_id=customer_id)
            CustomerEDD.objects.create(individual=ind_obj,
                                       verifiedDoc=verifiedDoc,
                                       approvalDoc=approval_doc,
                                       edd_remarks=edd_remarks
                                       )

        else:
            CustomerEDD.objects.filter(individual__customer_id=customer_id).update(verifiedDoc=verifiedDoc,approvalDoc=approval_doc,edd_remarks=edd_remarks)
       

        
    return redirect('riskrating')



def sendEDDApprovalEmail(request):
    
    print("in email edd")
    if  request.method=="POST":
        customer_id=request.POST.get("customer_id")
        obj=EDDApprovalEmailRecord.objects.filter(individual__customer_id=customer_id)
        print("after filtering ")
        now =  datetime.datetime.now()
        dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
        if not obj:
            _approval_email()
            ind_obj=Individual.objects.get(customer_id=customer_id)
            EDDApprovalEmailRecord.objects.create(
                                       individual=ind_obj,
                                       approval_email_sent=True,
                                       approval_email_sent_time=dt_string
       
                                       )

        else:
           EDDApprovalEmailRecord.objects.filter(individual__customer_id=customer_id).update(approval_email_sent=True, approval_email_sent_time=dt_string)
       
            
    return redirect('riskrating')



def _approval_email():
    print("in approval email")
    subject="Email for approval!"
    message= """Email for approval , Testing
                """

    sender="shahid@stifle.io"
    send_mail(subject, message,
                      sender, ["raishahidrai@gmail.com"],
                      fail_silently=False,
                      
                      )



def updateApproveRiskratingStatus(request):
    #updateStatus = Individual.objects.get(customer_id=id)
     print("in update approve risk rating")
     individualRisk=RiskRating.objects.all()
     print("in approve")
     if  request.method=="POST":
        customer_id=request.POST.get("approve_customer_id")
        print("customer id in approve",customer_id)
        approve_action_reason=request.POST.getlist("approve_action_reason")
        discount_status=request.POST.getlist("approve_customer_discount_status")

        approval_date=date.today() 
        approve_remarks=request.POST.get("approve_remarks")
        status="Approved"
        # img=request.FILES["verifiedDoc"]
        orgs=RiskRating.objects.filter(individual__customer_id=customer_id)
        if not orgs:
            ind_obj = Individual.objects.get(customer_id=customer_id)
            print("in none type ")
            RiskRating.objects.create(
                 individual=ind_obj,
                 riskrating_status=status,
                 risk_rating_remarks=approve_remarks,
                 action_reason=approve_action_reason,
                 approval_date=approval_date,
                 action_performed="",
                 discount_status=discount_status
                )
        else:
            RiskRating.objects.filter(individual__customer_id=customer_id).update(riskrating_status=status, risk_rating_remarks=approve_remarks,action_reason=approve_action_reason,action_performed="",approval_date=approval_date,discount_status=discount_status)     
     return render(request,"riskRating/risk_rating.html",{'individualRisk': individualRisk})

def updateHoldRiskratingStatus(request):
    #updateStatus = Individual.objects.get(customer_id=id)
     
     individualRisk=RiskRating.objects.all()
     print("in hold")
     if  request.method=="POST":
        customer_id=request.POST.get("hold_customer_id")
        print("customer id in decline",customer_id)
        hold_action=request.POST.get("hold_chkbox")
        action_reason=request.POST.getlist("action_reason")
        hold_remarks=request.POST.get("hold_remarks")
        discount_status=request.POST.get("hold_customer_discount_status")
        approval_date=date.today() 
        status="Hold"
        
        sent_to_L1=False
        sent_to_MLRO=False

        orgs=RiskRating.objects.filter(individual__customer_id=customer_id)
        if not orgs:
            ind_obj = Individual.objects.get(customer_id=customer_id)
            print("in none type ")
            
            if(hold_action.lower()=="sent to l1"):
                 sent_to_L1=True
                 RiskRating.objects.create(
                 individual=ind_obj,
                 riskrating_status=status,
                 risk_rating_remarks=hold_remarks,
                
                 approval_date=approval_date,
                 action_performed=hold_action,
                 action_reason=action_reason,
                 discount_status=discount_status,
                 sent_to_L1=sent_to_L1
                )
                

            else:
                 sent_to_MLRO=True
                 RiskRating.objects.create(
                 individual=ind_obj,
                 riskrating_status=status,
                 risk_rating_remarks=hold_remarks,
                
                 approval_date=approval_date,
                 action_performed=hold_action,
                 action_reason=action_reason,
                 discount_status=discount_status,
                 sent_to_MLRO=sent_to_MLRO
                )       

            
        else:
            if(hold_action.lower()=="sent to l1"):
                    sent_to_L1=True
                    RiskRating.objects.filter(individual__customer_id=customer_id).update(
                    riskrating_status=status, risk_rating_remarks=hold_remarks,
                    action_performed=hold_action,action_reason=action_reason,
                    approval_date=approval_date,discount_status=discount_status,
                    sent_to_L1=sent_to_L1,
                    sent_to_MLRO=sent_to_MLRO
                    ) 
                
            else:
                    sent_to_MLRO=True
                    RiskRating.objects.filter(individual__customer_id=customer_id).update(
                    riskrating_status=status, risk_rating_remarks=hold_remarks,
                    action_performed=hold_action,action_reason=action_reason,
                    approval_date=approval_date,discount_status=discount_status,
                    sent_to_L1=sent_to_L1,
                    sent_to_MLRO= sent_to_MLRO,
                    ) 



     return render(request,"riskRating/risk_rating.html",{'individualRisk': individualRisk})
def updateDeclineRiskratingStatus(request):
    #updateStatus = Individual.objects.get(customer_id=id)
     individualRisk=RiskRating.objects.all()
     print("in decline")
     if  request.method=="POST":
        customer_id=request.POST.get("decline_customer_id")
        print("customer id in decline",customer_id)
        decline_reason=request.POST.getlist("decline_reason")
        decline_remarks=request.POST.get("decline_remarks")
        discount_status=request.POST.get("decline_customer_discount_status")
        approval_date=date.today() 
        status="Declined"
        # img=request.FILES["verifiedDoc"]
        orgs=RiskRating.objects.filter(individual__customer_id=customer_id)
        if not orgs:
            ind_obj = Individual.objects.get(customer_id=customer_id)
            print("in none type ")
            RiskRating.objects.create(
                 individual=ind_obj,
                 riskrating_status=status,
                 risk_rating_remarks=decline_remarks,
                 reason=decline_reason,
                 approval_date=approval_date,
                 discount_status=discount_status
                )
        else:
            RiskRating.objects.filter(individual__customer_id=customer_id).update(riskrating_status=status, risk_rating_remarks=decline_remarks,reason=decline_reason,approval_date=approval_date,discount_status=discount_status)     
     return render(request,"riskRating/risk_rating.html",{'individualRisk': individualRisk})

        
    #return render(request,"riskRating/risk_rating.html",{'individualRisk': individualRisk})

def updateRiskratingStatus(request):
    #updateStatus = Individual.objects.get(customer_id=id)
     
    if  request.method=="POST":
        customer_id=request.POST.get("customer_id")
        status=request.POST.get("status")
        remarks=request.POST.get("remarks")
       
        # img=request.FILES["verifiedDoc"]
        orgs=RiskRating.objects.filter(customer_id=customer_id)
        if not orgs:
            print("in none type ")
            RiskRating.objects.create(
                customer_id=customer_id,
                status=status,
                remarks=remarks
                )
        else:
            RiskRating.objects.filter(customer_id=customer_id).update(status=status, remarks=remarks)
            
            
        return HttpResponse("data has been updated ")

        
    #return render(request,"riskRating/risk_rating.html",{'individualRisk': individualRisk})









def generate_pdf(request,id):
        print(id)
        template = get_template('riskRating/print_customer.html')
        ind_obj=Individual.objects.get(customer_id=id)

        print(ind_obj.customer_id)
        context = {          
        }


        context['showCustomerObject'] =  ind_obj
        
        html = template.render(context)
        pdf = render_to_pdf('riskRating/print_customer.html', context)
        if pdf:
            response = HttpResponse(pdf, content_type='application/pdf')
            filename = "Invoice_%s.pdf" %(id)
            content = "inline; filename='%s'" %(filename)
            download = request.GET.get("download")
            if download:
                content = "attachment; filename='%s'" %(filename)
            response['Content-Disposition'] = content
            return response
        return HttpResponse("Not found")