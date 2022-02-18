from django.contrib.auth.decorators import login_required
from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from django.http import HttpRequest
from django.views.decorators.csrf import csrf_exempt
from monitoring.models import MonitoringData
from riskrating.models import RiskRating
from datetime import timedelta, date
from identification.models import Individual
from itertools import chain
import pandas as pd
from .models import STRData
from datetime import datetime
from django.db.models import Q




#@login_required(login_url="login")     
#@csrf_exempt
def monitoring(request):
    context={}
    print("in monitoring")
    
    approvedCases=RiskRating.objects.filter(riskrating_status="Approved")
    rejectedCases=RiskRating.objects.filter(riskrating_status="Declined")
    holdCases=RiskRating.objects.filter(Q(riskrating_status="Hold") | Q(monitoring_status_report="fail"))
    

    print(approvedCases)
    print(rejectedCases)
    
    context["approvedCases"]=approvedCases
    context["rejectedCases"]=rejectedCases
    context["holdCases"]=holdCases

    return render(request,"monitoring/monitoring.html",context)




def updateMonitoring(request):
    print("in update monitoring ")
    context={}
    approvedCases=RiskRating.objects.filter(riskrating_status="Approved")
    rejectedCases=RiskRating.objects.filter(riskrating_status="Declined")
    
    
    context["approvedCases"]=approvedCases
    context["rejectedCases"]=rejectedCases


    if request.method=="POST":
        customer_id=request.POST.get("customer_id")
        print("customer id is",customer_id)
        status_report=request.POST.get("status_report")
        print("status report is",status_report)
        monitoring_frequency=request.POST.get("monitoring_frequency")
        print("monitoring_frequencyreport is",monitoring_frequency)
        monitoring_remarks=request.POST.get("monitoring_remarks")
        today_date=date.today()


        if status_report=="under_investigation":
            investigation_type=request.POST.get("investigation_type")
        else:
            investigation_type=""
        print(investigation_type)
        print(type(customer_id))
        print(monitoring_frequency)
        if monitoring_frequency.lower()=="high":
            monitoring_timeline = date.today() + timedelta(days=15)
        elif monitoring_frequency.lower()=="medium":
            monitoring_timeline = date.today() + timedelta(days=30)
        else:
            monitoring_timeline = date.today() + timedelta(days=90)

        print("date is ",monitoring_timeline)
        obj=RiskRating.objects.get(individual__customer_id=customer_id)
        approval_date=obj.approval_date
        print("approval date is",approval_date)
        datetime_converted = datetime.strptime(approval_date, "%Y-%m-%d")
        approval_date=datetime_converted.date()
        tat=date.today()-approval_date
        print(tat)

        RiskRating.objects.filter(individual__customer_id=customer_id).update(monitoring_status_report=status_report,
                                                                                      monitoring_frequency=monitoring_frequency,
                                                                                      monitoring_timeline=monitoring_timeline,
                                                                                      monitoring_remarks=monitoring_remarks,
                                                                                      investigation_type=investigation_type,
                                                                                      monitoring_approval_date=today_date,
                                                                                      turn_around_time=tat,
                                                                                      monitoring_status="Monitoring Performed"

                                                                                    )

        #if not obj:
        #    print("in none ")
        #    ind_obj=  Individual.objects.get(customer_id=customer_id)
        #    print("after getting customer ")
        #    RiskRating.objects.create(individual=ind_obj,
        #                                  monitoring_status_report= status_report,
        #                                  monitoring_frequency=monitoring_frequency,
        #                                  monitoring_timeline=monitoring_timeline,
        #                                  monitoring_remarks=monitoring_remarks,
        #                                  investigation_type=investigation_type,
        #                                  monitoring_approval_date=today_date,
        #                                  turn_around_time=tat
        #                                  )
        #    print("after creating customer customer ")
        #else:
        #    print("in else")
        #    RiskRating.objects.filter(individual__customer_id=customer_id).update(monitoring_status_report=status_report,
        #                                                                              monitoring_frequency=monitoring_frequency,
        #                                                                              monitoring_timeline=monitoring_timeline,
        #                                                                              monitoring_remarks=monitoring_remarks,
        #                                                                              investigation_type=investigation_type,
        #                                                                              monitoring_approval_date=today_date,
        #                                                                              turn_around_time=tat
        #                                                                            )
    #return HttpResponse(request,"saved") 
    return render(request,"monitoring/monitoring.html",context)




def strForm(request):

    if request.method=="POST":
        customer_id=request.POST.get("suspect_id")
        print("customer id is",customer_id)

        suspect_type=request.POST.getlist("suspect_type")
        action_taken=request.POST.getlist("action_taken")
        bank_relationship=request.POST.get("bank_relationship")
        business_relationship=request.POST.get("business_relationships")
        relationship_to_person=request.POST.get("relationshi_status")
        transaction_capacity=request.POST.get("transaction_capacity")
        if(relationship_to_person=="no"):
            termination_date=request.POST.get("termination_date")

        else:
            termination_date=""
        
        
        
       
        obj=STRData.objects.filter(individual__customer_id=customer_id)
        if not obj:
            print("in none ")
            ind_obj=  Individual.objects.get(customer_id=customer_id)
            print("after getting customer ")
            STRData.objects.create(individual=ind_obj,
                                            suspect_type=suspect_type,
                                            action_taken=action_taken,
                                            bank_relationship= bank_relationship,
                                            business_relationship=business_relationship,
                                            relationship_to_person=relationship_to_person,
                                            transaction_capacity=transaction_capacity,
                                            termination_date=termination_date
                                          )
            print("after creating customer customer ")
        else:
            print("in else")
            STRData.objects.filter(individual__customer_id=customer_id).update(suspect_type=suspect_type,
                                            action_taken=action_taken,
                                            bank_relationship= bank_relationship,
                                            business_relationship=business_relationship,
                                            relationship_to_person=relationship_to_person,
                                            transaction_capacity=transaction_capacity,
                                            termination_date=termination_date
                                                                                    )

    return HttpResponse(request,"saved")   
#@login_required(login_url="login")     
#@csrf_exempt
def str(request):
    return render(request,"monitoring/str.html")