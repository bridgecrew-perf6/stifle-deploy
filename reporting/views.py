from django.contrib.auth.decorators import login_required
from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from django.http import HttpRequest
from django.db.models import Count
import sys
from django.views.decorators.csrf import csrf_exempt
import sqlalchemy
from identification.models import *
from discounting.models import *
from pymysql import NULL, connect
from rapidfuzz import process, fuzz
from sqlalchemy import create_engine
import pandas as pd
from django.conf import settings
from django.core.paginator import InvalidPage, Paginator, EmptyPage, PageNotAnInteger
from django.core import serializers


@login_required(login_url="login")     
@csrf_exempt
def reporting(request):
    

    context = {}
    
    

    alertData=Alert.objects.all()
    paginator = Paginator(alertData, 10)

    try:
        page = int(request.GET.get('page', '1'))
    except:
        page = 1

    try:
        alertData = paginator.page(page)
    except(EmptyPage, InvalidPage):
        alertData = paginator.page(page)

    
    
    context['alertData'] = alertData
   

    #return HttpResponse(json, content_type='application/json')
    return render(request,"reporting/report_module.html",context)

def ListWiseReport(request):
    context = {}

    listwiseAlert=(Alert.objects.values('list').annotate(alertcount=Count('list'))
    .order_by())

    context['listwiseAlert'] = listwiseAlert


    return render(request,"reporting/list_wise_report.html",context)


def ConsolidatedKYC(request):
    context = {}
    individualData = Individual.objects.all()

    paginator = Paginator(individualData, 10)

    try:
        page = int(request.GET.get('page', '1'))
    except:
        page = 1

    try:
        individualData = paginator.page(page)
    except(EmptyPage, InvalidPage):
        individualData = paginator.page(page)

   
    context['individualData'] = individualData
    
    return render(request,"reporting/consolidated_kyc.html",context)





def deleteCustomer(request,id):
    print("i am in delete function")
    Individual.objects.filter(customer_id=id).delete()


    return redirect('consolidated_kyc')


#def listWiseReporting(request):
    
    #Alert.objects.all()
    #print("total lis",listwiseAlert)


   # return render(request,"reporting/report_module.html",{'listwiseAlert': listwiseAlert})

#def reporting(request):
#      return render(request,"reporting/report_module.html")
      
    #individual = Individual.objects.all()
    #return render(request,"reporting/report_module.html",{'individual': individual})



#result = (Members.objects
#    .values('designation')
#    .annotate(dcount=Count('designation'))
#    .order_by()
#)