from django.contrib.auth.decorators import login_required
from django.http.response import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.http import HttpRequest

from django.views.decorators.csrf import csrf_exempt
import requests
import json


from .models import IndividulDiscount
from pymysql import NULL, connect
from rapidfuzz import process, fuzz
import sqlalchemy
import pandas as pd
import numpy as np
from django.db import connection 
from datetime import datetime,date
from .models import *
from django.urls import reverse
from django.core.mail import send_mail
import random
from django.utils import timezone
from django.db import connection
from monitoring.models import STRData
from identification.models import Individual
from riskrating.models import RiskRating
from identification.models import *
from .filters import IndividualDiscountFilter






def customerRecords(request):
    individual=Individual.objects.all()
    entity=Organization.objects.all()
   
  



    print(individual)
    for obj in individual:
        print(obj.screening_performed)

    return render(request,"discounting/customerRecords.html",{"individualData":individual,'entityData':entity})

def customerRecordsL2(request):
    individual=L2_Cases.objects.all()
    entity=Organization.objects.all()
   
    print(individual)
   

    return render(request,"discounting/customerRecordsL2.html",{"individualData":individual,'entityData':entity})



def alerts(request, id):
    ind_obj = Individual.objects.get(customer_id=id)
    fuzz_score = FuzzyScore.objects.get(id = 1)
    
    cust_name=ind_obj.customer_name
    cust_father_name=ind_obj.father_name
    cust_cnic=ind_obj.customer_id
    cust_dob=ind_obj.birth_date
    cust_pob=ind_obj.birth_place


    alerts=""
    total_alerts=""

    number=0
    if(len(Alert.objects.all())==0):
        number=1
    else:
        last_id=Alert.objects.latest('id')
        print(last_id)
        number = last_id.id
        
    number= 'STIFLE{}{}'.format(timezone.now().strftime('%y%m%d'), number)
    print(number)

    obj=Alert.objects.filter(individual__customer_id=id)
    if not obj:    
        url = "https://stifle.live/api/scoring/alert"

        payload = json.dumps({
        "name": ind_obj.customer_name,
        "father_name": ind_obj.father_name,
        "name_fuzzy_score": fuzz_score.score
        })
        headers = {
        'Content-Type': 'application/json',
        'Authorization':'Token 230e0b46ddbc15aac4de47875f9ac03eacdfbb5f'
        }

        response = requests.request("POST", url, headers=headers, data=payload)
    
        reponse = json.loads(response.text)
        for data in reponse:
            print(data)
            Alert.objects.create(
                individual = ind_obj,
                case_id=number,
                dataID = data['dataid'],
                name = data['name'],
                father_name = data['father_name'],
                alias = data['alias'],
                alias_quality = data['alias_quality'],
                id_number = data['id_number'],
                gender = data['gender'],
                type = data['type'],
                strength = data['strength'],
                score = data['score'],
                dob = data['dob'],
                pob = data['pob'],
                address = data['address'],
                province = data['province'],
                distict = data['district'],
                nationality = data['nationality'],
                country = data['country'],
                city = data['city'],
                list = data['list'],
            
            )
        
        
        now =  datetime.datetime.now()
        dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
        ScreenStatus.objects.create(
            individual=ind_obj,
            customer_type="Individual",
            screen_date=dt_string
            )
        Individual.objects.filter(customer_id=id).update(screening_performed=True)

        return redirect ("alertsView",id=id)

    else:
        
        return redirect ("alertsView",id=id)

    #return render(request,'discounting/discounting.html',{'alerts' : alerts, 'id' : id, 'total_alerts':total_alerts,
                                                          
    #                                                       'cust_name':cust_name,
    #                                                       'cust_father_name':cust_father_name,
    #                                                       'cust_cnic':cust_cnic,
    #                                                       'cust_dob':cust_dob,
    #                                                       'cust_pob':cust_pob,
                                                          
                                                          
    #                                                      })

def alertsView(request,id):

    total_alerts=None
    ind_obj = Individual.objects.get(customer_id=id)
    
    cust_name=ind_obj.customer_name
    cust_father_name=ind_obj.father_name
    cust_cnic=ind_obj.customer_id
    cust_dob=ind_obj.birth_date
    cust_pob=ind_obj.birth_place
    
    alerts = Alert.objects.filter(individual__customer_id = id)
    total_alerts=len(alerts)

    return render(request,'discounting/alerts_individual.html',{'alerts' : alerts, 'id' : id, 'total_alerts':total_alerts,
                                                          
                                                           'cust_name':cust_name,
                                                           'cust_father_name':cust_father_name,
                                                           'cust_cnic':cust_cnic,
                                                           'cust_dob':cust_dob,
                                                           'cust_pob':cust_pob,
                                                          
                                                          
                                                          })







def get_key(my_dict,val): 
    l_max=[]
    l_other=[]
    for key, value in my_dict.items(): 
        if val == value: 
            l_max.append(key)
        else:
            l_other.append(key)
    return l_max,l_other





def discount(request,id):
    cid=id
    #cid=6512345678901
    print("in discount")
    cid=str(cid)
    engine = sqlalchemy.create_engine('postgresql://postgres:saim123@localhost:5432/compliancedb')
    ##df = pd.read_sql_table('discounting_alert',engine)
    schema_name = connection.schema_name
    print(schema_name)
    df = pd.read_sql_query(f"select * from {schema_name}.discounting_alert where individual_id='%s'" %cid,engine)
    #df=Alert.objects.filter(individual_id=int(id))

    global alerts_df
    def alerts_df():
        return df

    ##print(df)
    print(cid)

    ind_obj = Individual.objects.get(customer_id=cid)
    #fuzz_score = FuzzyScore.objects.get(id = 1)

    name = str(ind_obj.customer_name)
    
    fatherName = str(ind_obj.father_name)
    cnicNum =str(ind_obj.customer_id)
    #passportnum = "abc",
    dob = str(ind_obj.birth_date)
    country =str(ind_obj.nationality)
    pob = str(ind_obj.birth_place)
    gender = str(ind_obj.gender)
    nationality = str(ind_obj.nationality)
    #sanction_list = "ofac_sdn",
    province = str(ind_obj.province)
    district = str(ind_obj.district)
    addressNum=str(ind_obj.current_address)
    
    request.session["name"]=name
    request.session["fatherName"]=fatherName
    request.session["cnicNum"]=cnicNum
    request.session["dob"]=dob
    request.session["country"]=country
    request.session["pob"]=pob
    request.session["nationality"]=nationality
    request.session["province"]=province
    request.session["district"]=district
    request.session["addressNum"]=addressNum

    data = df    
    #alertcount = data[1]
    print("in discount before nacta df assignment")
    nacta_df =_discounting_nacta(request,cid)
    nacta_df.fillna(0)
    nacta_df_discrepant = _discounting_nacta_discrepant(request,cid)
    
    #html = nacta_df_discrepant.to_html()
    #html2 = nacta_df.to_html()
    ## write html to file
    #text_file = open("nacta_df_discrepant.html", "w")
    #text_file.write(html)
    #text_file.close()
    #text_file2 = open("nacta_df.html", "w")
    #text_file2.write(html2)
    #text_file2.close()



    # nacta_df_discounted = pd.concat([nacta_df, nacta_df_discrepant], ignore_index=True)    

    all_list_df = _discounting_all_other_list(request,cid)

    #html = all_list_df.to_html()
    
    ## write html to file
    #text_file = open("discount-other.html", "w")
    #text_file.write(html)
    #text_file.close()

    all_list_concat = pd.concat([nacta_df, nacta_df_discrepant, all_list_df], ignore_index=True)
    #all_list_concat = pd.concat([nacta_df, all_list_df], ignore_index=True)
    print("hello after in all list concat")
    print(all_list_concat)


    all_list_concat.fillna(0)
    #html = all_list_concat.to_html()
    
    # write html to file
    #text_file = open("all-list-data.html", "w")
    #text_file.write(html)
    #text_file.close()
    
    
    
    obj = [IndividulDiscount.objects.create(   
        individual=ind_obj,
        data_Id=record['dataID'],
        case_id=record['case_id'],
        name  = record['name'],
        name_match_score = record['name_score'],
        alias = record['alias'],        
        id_number = record['id_number'],     
        id_number_match_score = record['id_number_score'],
        father_name = record['father_name'],
        father_name_match_score = record['father_name_score'],
        province=record['province'],
        province_match_score=record['province_match_score'],
        district=record['distict'],
        district_match_score=record['district_match_score'],
        list = record['list'],
        type = record['type'],
        dob = record['dob'],
        dob_match_score = record['dob_match_score'],
        pob = record['pob'],       
        city = record['city'],
        city_match_score = record['city_match_score'],
        country = record['country'],
        country_match_score = record['country_match_score'],
        nationality = record['nationality'],
        nationality_match_score = record['nationality_match_score'],
        address = record['address'],
        address_match_score = record['address_match_score'],
        discounting_rationale = record['discounting_rationale'],
        discounting_factor = record['discounting_factor'],
        type_discounting_factor = record['type_discounting_factor'],
        proposed_action = record['proposed_action'],
        match_type = record['match_type'],
        risk=record['risk'],
        action_performed_type=record['action_performed_type'],
        discount_status=record['discount_status'],
    ) for record in all_list_concat.to_dict('records')]

    discount_stat=IndividulDiscount.objects.filter(individual__customer_id=cid)
    discount_proceed_stat=IndividulDiscount.objects.filter(individual__customer_id=cid,discount_status="Proceed")
    print("discount_stat", len(discount_stat))
    print("discount_proceed_stat",len(discount_proceed_stat))
    if (len(discount_stat)==len(discount_proceed_stat)):
        IndividulDiscount.objects.filter(individual__customer_id=cid).update(over_all_discount_status="Proceed")
        
    print("printing object")
    print(obj)
    #return HttpResponse("response")

    return redirect("ViewDiscounted",id=id)

    
    

def _discounting_nacta(request,id):
    print("entreing nacta function")
    ind_obj = Individual.objects.get(customer_id=id)
    fuzz_score = FuzzyScore.objects.get(id = 1)

    name = str(ind_obj.customer_name)
    print("name in nacta ", name)
    fatherName = str(ind_obj.father_name)
    cnicNum =str(ind_obj.customer_id)
    
    province = str(ind_obj.province)
    district = str(ind_obj.district)
    
    

    data = alerts_df()
    print(data)
    df = data
    #print(df)
    print("in nacta function")
    #print(df)
    
    nacta_df = df[df['list'] =='NACTA_PROSCRIBED_PERSONS']
    print(nacta_df)

    df1=nacta_df[nacta_df['id_number']!='']


    #html = df1.to_html()
    
    ## write html to file
    #text_file = open("NactaEmptyString.html", "w")
    #text_file.write(html)
    #text_file.close()



    #nacta_df = nacta_df[~nacta_df['discrepant_check'].str.endswith('1')] 
    nacta_df=nacta_df[nacta_df['id_number']!='']
#    print("aftr nacta checking")
#    print(nacta_df)
    for index, row in nacta_df.iterrows():
        print(row['id_number'])
        print(cnicNum)
        ID_NUMBER_Score = int(process.extract(row['id_number'], [cnicNum], scorer=fuzz.token_sort_ratio)[0][1])
        print(ID_NUMBER_Score)
        print("name is",name)
        Name_Score = int(process.extract(row['name'], [name], scorer=fuzz.token_sort_ratio)[0][1])
        print("name from pandas",row['name'])
        print("name score is",Name_Score)
        Father_Name_Score = int(process.extract(row['father_name'], [fatherName], scorer=fuzz.token_sort_ratio)[0][1])
        print("father name from pandas ",row['father_name'])
        print("father name score is",Father_Name_Score)
        Province_Match_Score = int(process.extract(row['province'], [province], scorer=fuzz.token_sort_ratio)[0][1])
        print("province from pandas",row['province'])
        print("province match",Province_Match_Score)
        District_Match_Score = int(process.extract(row['distict'], [district], scorer=fuzz.token_sort_ratio)[0][1])
        print("district from pandas",row['distict'])
        print("district match",District_Match_Score )
        nacta_df.loc[index, 'id_number_score'] = ID_NUMBER_Score
        nacta_df.loc[index, 'name_score'] = Name_Score
        nacta_df.loc[index, 'father_name_score'] = Father_Name_Score  
        nacta_df.loc[index, 'province_match_score'] = Province_Match_Score  
        nacta_df.loc[index, 'district_match_score'] = District_Match_Score 
        nacta_df.loc[index, 'city_match_score'] = 0
        nacta_df.loc[index, 'passport_match_score'] = 0
        
        nacta_df.loc[index, 'country_match_score'] = 0
        nacta_df.loc[index, 'nationality_match_score'] = 0
        nacta_df.loc[index, 'address_match_score'] = 0      
        nacta_df.loc[index, 'dob_match_score'] = 0

        if ID_NUMBER_Score == 100:
            if Name_Score == 100 and Father_Name_Score == 100 and Province_Match_Score==100 and District_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name, Father Name, Province and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="5"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100 and Father_Name_Score == 100 and Province_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name, Father Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="4"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"

                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100 and Father_Name_Score == 100 and District_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name, Father Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="4"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100 and Father_Name_Score == 100:            
                nacta_df.loc[index, 'match_type']= 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name and Father Name are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor']="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC and Full Name are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100 and Province_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor']="3"
                nacta_df.loc[index, 'type_Discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100 and District_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Father_Name_Score == 100 and Province_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale']="Match Found! CNIC, Father Full Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""
                
            elif Father_Name_Score == 100 and District_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Father Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""
                
            elif Province_Match_Score==100 and District_Match_Score==100:
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Province and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action']= "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif District_Match_Score==100:
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, district are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Province_Match_Score==100:
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale']="Match Found! CNIC, Pistrict are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor']="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""
            else:
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""
        else:
            if Name_Score == 100 and Father_Name_Score == 100 and Province_Match_Score == 100 and District_Match_Score == 100:                 
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name, Province and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="4"
                nacta_df.loc[index, 'type_Discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

                       
            elif Name_Score == 100 and Father_Name_Score == 100 and Province_Match_Score==100:                 
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name, Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_Discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100 and Father_Name_Score == 100 and District_Match_Score==100:  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name, District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100 and Father_Name_Score == 100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Name_Score == 100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor']="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
                nacta_df.loc[index, 'discount_status'] = "Proceed"

            elif Name_Score == 100 and Province_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
                nacta_df.loc[index, 'discount_status'] = "Proceed"

             

            elif Name_Score == 100 and District_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
                nacta_df.loc[index, 'discount_status'] = "Proceed"

            elif Father_Name_Score == 100 and Province_Match_Score==100:  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Father Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor']="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Father_Name_Score == 100 and District_Match_Score==100:  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Father Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""
            
            elif Father_Name_Score == 100:  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Father Name matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
                nacta_df.loc[index, 'discount_status'] = ""

            elif Province_Match_Score==100 and District_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Province and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
                nacta_df.loc[index, 'discount_status'] = "Proceed"
                

            elif District_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, District matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
                nacta_df.loc[index, 'discount_status'] = "Proceed"
            elif Province_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Province matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action']= "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
                nacta_df.loc[index, 'discount_status'] = "Proceed"

            else:
                nacta_df.loc[index, 'discounting_rationale'] =""
                nacta_df.loc[index, 'discounting_factor'] ="0"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
                nacta_df.loc[index, 'discount_status'] = "Proceed"
        print(nacta_df["name_score"])
    return nacta_df

def _discounting_nacta_discrepant(request,id):

    ind_obj = Individual.objects.get(customer_id=id)
    

    name = str(ind_obj.customer_name)
    print("name in nacta discrepant ", name)
    fatherName = str(ind_obj.father_name)
     
    province = str(ind_obj.province)
    district = str(ind_obj.district)

    #name = request.session.get('name')    
    #fatherName = request.session.get('fatherName')        
    #province = request.session.get('province')
    #district = request.session.get('district')    

    data = alerts_df()
    print(data)
    df = data
    
    nacta_df = df[df['list'] =='NACTA_PROSCRIBED_PERSONS']    
    nacta_df_discrepant_cnic=nacta_df[nacta_df['id_number']=='']

    #nacta_df_discrepant_cnic = nacta_df[nacta_df['DISCREPANT_CHECK'].str.endswith('1')]
    
    for index, row in nacta_df_discrepant_cnic.iterrows():
        full_name_check = False
        Name_Score = process.extract(row['name'], [name], scorer=fuzz.token_sort_ratio)[0][1]

        if Name_Score == 100:
            full_name_check = True
            nacta_df_discrepant_cnic.loc[index, 'name_score'] = Name_Score
        else:        
            nacta_name = row['name'].split()
            tempList = [] 
            for i,nacta_name in enumerate(nacta_name):#       
                for i in name.split():
                    tempList.extend([process.extract(nacta_name, [i], scorer=fuzz.token_sort_ratio)[0][1]])

            if len(tempList) != 0:
                Name_Score = max(tempList)
            else:
                Name_Score = 0        

            nacta_df_discrepant_cnic.loc[index, 'name_score'] = Name_Score
        """----------------------------------------------------------------------------------------------------"""
        father_full_name_check = False
        Father_Name_Score = process.extract(row['father_name'], [fatherName], scorer=fuzz.token_sort_ratio)[0][1]

        if Father_Name_Score == 100:
            father_full_name_check = True
            nacta_df_discrepant_cnic.loc[index, 'father_name_score'] = Father_Name_Score 
        else:

            nacta_father_name = row['father_name'].split()
            tempList = [] 
            for i,nacta_father_name in enumerate(nacta_father_name):
                for i in fatherName.split():
                    tempList.extend([process.extract(nacta_father_name, [i], scorer=fuzz.token_sort_ratio)[0][1]])
                    
            if len(tempList) != 0:
                Father_Name_Score = max(tempList)
            else:
                Father_Name_Score = 0        

        nacta_df_discrepant_cnic.loc[index, 'father_name_score'] = Father_Name_Score

        Province_Match_Score = int(process.extract(row['province'], [province], scorer=fuzz.token_sort_ratio)[0][1])
        District_Match_Score = int(process.extract(row['distict'], [district], scorer=fuzz.token_sort_ratio)[0][1])
        
        nacta_df_discrepant_cnic.loc[index, 'id_number_score'] = 0
        nacta_df_discrepant_cnic.loc[index, 'province_match_score'] = Province_Match_Score  
        nacta_df_discrepant_cnic.loc[index, 'district_match_score'] = District_Match_Score
        nacta_df_discrepant_cnic.loc[index, 'city_match_score'] = 0
        nacta_df_discrepant_cnic.loc[index, 'country_match_score'] = 0
        nacta_df_discrepant_cnic.loc[index, 'nationality_match_score'] = 0
        nacta_df_discrepant_cnic.loc[index, 'address_match_score'] = 0        
        nacta_df_discrepant_cnic.loc[index, 'dob_match_score'] = 0        
        if Name_Score == 100 and Father_Name_Score == 100 and Province_Match_Score == 100 and District_Match_Score == 100:
            print("hi ther ")
            if full_name_check and father_full_name_check:
               print("")
               nacta_df_discrepant_cnic.loc[index, 'discounting_rationale']="Match Found! Full Name/Father Name/District/Province is/are matched"
               nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
               nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="4"
               nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Strong"
               nacta_df_discrepant_cnic.loc[index, 'risk'] = "High"
               nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'True Positive'
               nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "reject"
               nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""
             
                
            elif full_name_check == False and father_full_name_check:
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Single Name/Father Name/District/Province is/are matched"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="4"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df_discrepant_cnic.loc[index, 'risk'] = "High"
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'True Positive'    
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "reject"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""

            elif full_name_check and father_full_name_check == False:
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Full Name/Single Father Name/District/Province is/are matched"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Seek Sanctions/AML/FCC Guidance for further action"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="4"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df_discrepant_cnic.loc[index, 'risk'] = "High"
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'Possible Match'   
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""

            elif full_name_check == False and father_full_name_check == False:
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Single Name/Single Father Name/District/Province is/are matched"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Seek Sanctions/AML/FCC Guidance for further action"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="4"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df_discrepant_cnic.loc[index, 'risk'] = "High"
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'Possible Match'
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""

        elif Name_Score == 100 and Father_Name_Score == 100 and Province_Match_Score != 100 and District_Match_Score !=100:   

            if full_name_check and father_full_name_check:
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Full Name/Father Name is/are matched"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="2"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df_discrepant_cnic.loc[index, 'risk'] = "High"
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'True Positive'
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""
                
            elif full_name_check == False and father_full_name_check:
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Single Name/Father Name is/are matched"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Seek Sanctions/AML/FCC Guidance for further action"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="2"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'Possible Match'
                nacta_df_discrepant_cnic.loc[index, 'risk'] = "High"
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""

            elif full_name_check and father_full_name_check == False:
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Full Name/Single Father Name is/are matched"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Seek Sanctions/AML/FCC Guidance for further action"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="2"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'Possible Match'
                nacta_df_discrepant_cnic.loc[index, 'rRisk'] = "High"
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""

            elif full_name_check == False and father_full_name_check == False:
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Single Name/Single Father Name is/are matched"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Seek Sanctions/AML/FCC Guidance for further action"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="2"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = 'Possible Match'
                nacta_df_discrepant_cnic.loc[index, 'risk'] = "High"
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""

        elif Name_Score == 100 and Father_Name_Score != 100 and Province_Match_Score !=100 and District_Match_Score !=100:     

            if full_name_check:       
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = "False Positive"
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Full Name matched"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="1"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Seek Sanctions/AML/FCC Guidance for further action"
                nacta_df_discrepant_cnic.loc[index, 'risk'] = 'Medium'
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""

            else:
                nacta_df_discrepant_cnic.loc[index, 'match_type'] = "False Positive"
                nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="Match Found! Single Name matched"
                nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="1"
                nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Seek Sanctions/AML/FCC Guidance for further action"
                nacta_df_discrepant_cnic.loc[index, 'risk'] = 'Medium'
                nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "seek_guidance"
                nacta_df_discrepant_cnic.loc[index, 'discount_status'] = ""
        

        else:
            nacta_df_discrepant_cnic.loc[index, 'match_type'] = "False Positive"
            nacta_df_discrepant_cnic.loc[index, 'discounting_rationale'] ="No match"
            nacta_df_discrepant_cnic.loc[index, 'discounting_factor'] ="0"
            nacta_df_discrepant_cnic.loc[index, 'type_discounting_factor'] ="Weak"
            nacta_df_discrepant_cnic.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
            nacta_df_discrepant_cnic.loc[index, 'risk'] = 'Low'
            nacta_df_discrepant_cnic.loc[index, 'action_performed_type'] = "Proceed"
            nacta_df_discrepant_cnic.loc[index, 'discount_status'] = "Proceed"

    return nacta_df_discrepant_cnic

def _discounting_all_other_list(request,id):


    print("entreing discounting all")
    ind_obj = Individual.objects.get(customer_id=id)
    fuzz_score = FuzzyScore.objects.get(id = 1)

    name = str(ind_obj.customer_name)
    print("name in nacta ", name)
    passportNum=id
    cnicNum=id
    fatherName = str(ind_obj.father_name)
    cnicNum =str(ind_obj.customer_id)
    
    province = str(ind_obj.province)
    district = str(ind_obj.district)
    
    dob = str(ind_obj.birth_date)
    country = str(ind_obj.nationality)
    pob = str(ind_obj.city)
   
    addressNum = str(ind_obj.current_address)
    nationality = str(ind_obj.nationality)

    print(dob)


    
    data = alerts_df()
    print(data)
    df = data
    print(df)
    print("in nacta function")
    #print(df)

    #name = request.session.get('name')   
    #passportNum = request.session.get('passportNum')
    #cnicNum = request.session.get('cnicNum')
    #dob = request.session.get('dob')
    #country = request.session.get('country')
    #pob = request.session.get('pob')
    #dob = request.session.get('dob')
    #addressNum = request.session.get('addressNum')    
    #nationality = request.session.get('nationality')    
    #province = request.session.get('province')
    #district = request.session.get('district')

    #data = alerts_df()
    #df = data[0]
    
    all_other_list_df = df[df['list'] !='NACTA_PROSCRIBED_PERSONS']
    print(all_other_list_df)
    for index, row in all_other_list_df.iterrows():
        score_dict = {}
        """--------------------------------------------Name--------------------------------------------------------"""
        full_name_check = False
        Name_Score = process.extract(row['name'], [name], scorer=fuzz.token_sort_ratio)[0][1]

        if Name_Score == 100:
            full_name_check = True
            all_other_list_df.loc[index, 'name_score'] = Name_Score
        else:        
            name_alias_father_name = (row['name'] + row['alias'] + row['father_name']).split()
                        
            tempList = [] 
            for i,name_alias_father_name in enumerate(name_alias_father_name):#       
                for i in name.split():
                    tempList.extend([process.extract(name_alias_father_name, [i], scorer=fuzz.token_sort_ratio)[0][1]])

            if len(tempList) != 0:
                Name_Score = max(tempList)
            else:
                Name_Score = 0        
        print("name score is",Name_Score)
        all_other_list_df.loc[index, 'name_score'] = Name_Score
        if full_name_check:
            score_dict.update({'Full Name': Name_Score})
        else:
            score_dict.update({'Single Name': Name_Score})
        """--------------------------------------------cnicNum--------------------------------------------------------"""
        ID_NUMBER_Score = 0
        if len(cnicNum) > 0 and cnicNum != ' ':
            ID_NUMBER_Score = int(process.extract(row['id_number'], [cnicNum], scorer=fuzz.token_sort_ratio)[0][1])     
            all_other_list_df.loc[index, 'id_number_score'] = ID_NUMBER_Score
        else:
            ID_NUMBER_Score = 0
        print("ID_NUMBER_Score score is",ID_NUMBER_Score )
        all_other_list_df.loc[index, 'id_number_score'] = ID_NUMBER_Score
        score_dict.update({'id_number': ID_NUMBER_Score}) 
        """-------------------------------------------passportNum---------------------------------------------------------"""
        Passport_Match_Score = 0
        if len(passportNum) > 0 and passportNum != ' ':
            Passport_Match_Score = int(process.extract(row['id_number'], [passportNum], scorer=fuzz.token_sort_ratio)[0][1])     
            
        else:
            all_other_list_df.loc[index, 'passport_match_score'] = 0
        print("Passport_Match_Score score is",Passport_Match_Score )
        all_other_list_df.loc[index, 'passport_match_score'] = Passport_Match_Score
        score_dict.update({'passport': Passport_Match_Score})
        """----------------------------------------------Province------------------------------------------------------"""
        tempListProvince = [] 
        Province_Match_Score = 0
        if len(province)>0 and province!=" ":
            Province_Match_Score = int(process.extract(row['province'], [province], scorer=fuzz.token_sort_ratio)[0][1])
        else:
            all_other_list_df.loc[index, 'province_match_score'] = 0
        #for i in row['province'].split():          
        #        tempListProvince.extend([int(process.extract(province, [i], scorer=fuzz.token_sort_ratio)[0][1])])

        #if len(tempListProvince) != 0:
        #    Province_Match_Score = max(tempListProvince)            
        #else:          
        #    Province_Match_Score = 0
        #print("Province_Match_Score score is",Province_Match_Score )
        
        all_other_list_df.loc[index, 'province_match_score'] = Province_Match_Score
        score_dict.update({'province': Province_Match_Score})
        """---------------------------------------------District-------------------------------------------------------"""
        tempLisDistrict = [] 
        District_Match_Score = 0
        if len(district)>0 and district!=" ":
            District_Match_Score = int(process.extract(row['distict'], [district], scorer=fuzz.token_sort_ratio)[0][1])
        else:
            all_other_list_df.loc[index, 'district_match_score'] = 0
        #for i in row['distict'].split():  
        #        print("value of disrrict",row['distict'])
        #        tempLisDistrict.extend([int(process.extract(district, [i], scorer=fuzz.token_sort_ratio)[0][1])])

        #if len(tempLisDistrict) != 0:
        #    District_Match_Score = max(tempLisDistrict)
        #else:
        #    District_Match_Score = 0
        print("district match score is",District_Match_Score)
        all_other_list_df.loc[index, 'district_match_score'] = District_Match_Score
        score_dict.update({'district': District_Match_Score})
        """--------------------------------------------Nationality--------------------------------------------------------"""
        Nationality_Match_Score = 0
        if len(nationality)>0 and nationality!=" ":
            Nationality_Match_Score = int(process.extract(row['nationality'], [nationality], scorer=fuzz.token_sort_ratio)[0][1])
            print("nationality is ",nationality)
            print("nationality in data fram is ",row['nationality'])
        else:
            all_other_list_df.loc[index, 'nationality_match_score'] = 0

        #if len(nationality) > 0:
        #    tempListNationality = [] 
        #    nationality = nationality + country
        #    for i in nationality:
        #        for j in i.split():
        #            tempListNationality.extend([int(process.extract(row['nationality'], [j], scorer=fuzz.token_sort_ratio)[0][1])])

        #    if len(tempListNationality) != 0:
        #        Nationality_Match_Score= max(tempListNationality)                 
        #    else:
        #        Nationality_Match_Score = 0
        #else:
        #    Nationality_Match_Score = 0
        print("Nationality_Match_Score score is",Nationality_Match_Score)
        all_other_list_df.loc[index, 'nationality_match_score'] = Nationality_Match_Score
        score_dict.update({'nationality': Nationality_Match_Score})
        """--------------------------------------------Country--------------------------------------------------------"""
        Country_Match_Score = 0
        if len(country)>0 and country!=" ":
             Country_Match_Score = int(process.extract(row['country'], [country], scorer=fuzz.token_sort_ratio)[0][1])
             print("country is ",country)
             print("city in data frame is ",row['country'])
        else:
            all_other_list_df.loc[index, 'country_match_score'] = 0

        #tempListCountry = [] 
        #if len(country) > 0:            
        #    for i in country:
        #        for j in i.split():
        #            tempListCountry.extend([int(process.extract(row['country'], [j], scorer=fuzz.token_sort_ratio)[0][1])])      
        #            print("country in nacta all list",row['country'])
        #            print("country in nacta all list 2 ",[j] )
        #    if len(tempListCountry) != 0:
        #        Country_Match_Score = max(tempListCountry)                 
        #    else:
        #        Country_Match_Score = 0
        #else:
        #    Country_Match_Score = 0
        print("Country_Match_Score score is",Country_Match_Score)
       
        all_other_list_df.loc[index, 'country_match_score'] = Country_Match_Score
        score_dict.update({'country': Country_Match_Score})
        """--------------------------------------------City/POB--------------------------------------------------------"""
        City_Match_Score = 0
        if len(pob)>0 and pob!=" ":
            City_Match_Score = int(process.extract(row['city'], [pob], scorer=fuzz.token_sort_ratio)[0][1])
        else:
            all_other_list_df.loc[index, 'city_match_score'] = 0

        #tempListPOB = [] 
        #if len(pob) > 0:            
        #    for i in pob:
        #        tempListPOB.extend([int(process.extract(row['city'], [i], scorer=fuzz.token_sort_ratio)[0][1])])

        #    if len(tempListPOB) != 0:
        #        City_Match_Score = max(tempListPOB)
        #    else:
        #        City_Match_Score = 0
        #else:
        #    City_Match_Score =  0
        print("City_Match_Score score is",City_Match_Score)
        print("city is ",pob)
        print("city in data frame is ",row['city'])
        all_other_list_df.loc[index, 'city_match_score'] = City_Match_Score
        score_dict.update({'city': City_Match_Score})
        """-------------------------------------------Father Name--------------------------------------------------------"""
        Father_Name_Score = 0
        all_other_list_df.loc[index, 'father_name_score'] = Father_Name_Score
        score_dict.update({'father': Father_Name_Score})
        print("Father_Name_Score score is",Father_Name_Score)
        """-------------------------------------------Address--------------------------------------------------------"""
        Address_Match_Score = 0
        if len(addressNum) > 0 and addressNum != ' ':
            Address_Match_Score = int(process.extract(row['address'], [addressNum], scorer=fuzz.token_sort_ratio)[0][1])            
        else:
            Address_Match_Score = 0
        print("Address_Match_Score score is",Address_Match_Score)
      
        all_other_list_df.loc[index, 'address_match_score'] = Address_Match_Score
        score_dict.update({'address': Address_Match_Score})
        """-------------------------------------------DOB--------------------------------------------------------"""
        DOB_Match_Score = 0
        if dob != None:
            DOB_Match_Score = int(process.extract(row['dob'], [dob], scorer=fuzz.token_sort_ratio)[0][1])   
        else:
            DOB_Match_Score = 0
        print("DOB_Match_Score score is",DOB_Match_Score)
        print("date of birth is ",dob)
        print("date of birth from db is ",row['dob'])
        all_other_list_df.loc[index, 'dob_match_score'] = DOB_Match_Score
        score_dict.update({'dob': DOB_Match_Score})
        """------------------------------------------CONDITIONS--------------------------------------------------------"""

        print("printing dictionary")
        print(score_dict)
        key_val_dict = get_key(score_dict,100)
        key_val_score_100 = key_val_dict[0]
        key_val_score_not_100 = key_val_dict[1]

        Discounting_Rationale_str = ', '.join(i for i in key_val_score_100)
        print("printing discounting rationale")
        print(Discounting_Rationale_str)
        if Discounting_Rationale_str!="":
            Discounting_Rationale_str = Discounting_Rationale_str + ' ' + 'are Matched'
            print(Discounting_Rationale_str)
        else:
            Discounting_Rationale_str="No Match"

        #Discounting_Rationale_str_not_match = ', '.join(i for i in key_val_score_not_100)
        #print("printing discounting rationale not")
        #print(Discounting_Rationale_str_not_match)
        #Discounting_Rationale_str_not_match = Discounting_Rationale_str + ' ' + 'are not Matched'
        #print(Discounting_Rationale_str_not_match)

        #Discounting_Rationale_str=Discounting_Rationale_str.join(Discounting_Rationale_str_not_match)


        Discounting_Factor_len = len(key_val_score_100)
        print("length of rationale")
        print(Discounting_Factor_len)
        if 'id_number' in key_val_score_100 or 'city' in key_val_score_100 or 'dob' in key_val_score_100 or 'passport' in key_val_score_100 or 'nationality' in key_val_score_100:
            Type_Discounting_Factor = 'Strong'
        else:
            Type_Discounting_Factor = 'Weak'
        
        if 'id_number' in key_val_score_100 or 'passport' in key_val_score_100  and 'Full Name' in key_val_score_100 and 'country' in key_val_score_100 or 'nationality' in key_val_score_100 or 'city' in key_val_score_100 or 'dob' in key_val_score_100:
            Risk = 'Critical'
            Match_Type = 'True Positive'
            Proposed_Action = 'Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR'
            action_performed_type = "reject"
            discount_status=""
        elif 'Full Name' in key_val_score_100 and 'country' in key_val_score_100 and 'nationality':
            Risk = 'High'
            Match_Type = 'True Positive'
            Proposed_Action = 'Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR'
            action_performed_type = "reject"
            discount_status=""
        elif 'Single Name' in key_val_score_100 or 'country' in key_val_score_100:
            Risk = 'Medium'
            Match_Type = 'Possible Match'
            Proposed_Action = 'Seek Sanctions/AML/FCC Guidance for further action'
            action_performed_type = "seek_guidance"
            discount_status=""
        else:
            Risk = 'Low'
            Match_Type = 'False Positive'
            Proposed_Action = 'Alert discounted by System based on mismatched of factors'
            action_performed_type = "Proceed"
            discount_status="Proceed"

        all_other_list_df.loc[index, 'match_type'] = Match_Type
        all_other_list_df.loc[index, 'discounting_rationale'] = Discounting_Rationale_str
        print("checking string of ratinale ")
        print(all_other_list_df.loc[index, 'discounting_rationale'])
        all_other_list_df.loc[index, 'discounting_factor'] = Discounting_Factor_len
        all_other_list_df.loc[index, 'type_discounting_factor'] = Type_Discounting_Factor
        all_other_list_df.loc[index, 'proposed_action'] = Proposed_Action
        all_other_list_df.loc[index, 'risk'] = Risk        
        all_other_list_df.loc[index, 'action_performed_type'] = action_performed_type 
        all_other_list_df.loc[index, 'discount_status'] = discount_status 
        #print(all_other_list_df)
    return all_other_list_df


def seekGuidanceUpdate(request):
    print("in seek guidance fun")
    #obj=IndividulDiscount.objects.filter(customer_id=cid)
        
    addressNum=request.session.get("addressNum")
    name=request.session.get("name")
    cnicNum=request.session.get("cnicNum")
    fatherName=request.session.get("fatherName")
    dob=request.session.get("dob")
    pob=request.session.get("pob")
    nationality=request.session.get("nationality")
    province=request.session.get("province")
    district=request.session.get("district")
    country=request.session.get("country")


    if request.method=="POST":
        id=request.POST.get("seek_customer_alert_id")
        print(id)
        customer_id=request.POST.get("seek_customer_id")
        action_performed=request.POST.get("action_performed")

        sent_to_L1=False
        sent_to_MLRO=False
        self_analysis=False
        discount_status="Pending"

        obj=Individual.objects.get(customer_id=customer_id)

        if action_performed.lower()=="sent to l2":
            sent_to_L2=True
            action_performed_type = "seek_guidance"
            #IndividulDiscount.objects.filter(individual__customer_id=customer_id).update(over_all_discount_status="Pending")
            IndividulDiscount.objects.filter(individual__customer_id=customer_id,action_performed_type = "seek_guidance").update(action_performed_type=action_performed,discount_status=discount_status,sent_to_L1=sent_to_L1,sent_to_MLRO=sent_to_MLRO,over_all_discount_status="Pending")
            
            
            L2_Cases.objects.create(
                individual=obj,
                alert_id=id
                )


        elif action_performed.lower()=="sent to mlro":
            sent_to_MLRO=True

            #IndividulDiscount.objects.filter(individual__customer_id=customer_id).update(over_all_discount_status="Pending")
            IndividulDiscount.objects.filter(individual__customer_id=customer_id,action_performed_type = "seek_guidance").update(action_performed_type=action_performed,discount_status=discount_status,sent_to_L1=sent_to_L1,sent_to_MLRO=sent_to_MLRO,over_all_discount_status="Pending")
            
            MLRO_Cases.objects.create(
                 individual=obj,
                 alert_id=id
                )


        else:
            self_analysis=True
            #IndividulDiscount.objects.filter(individual__customer_id=customer_id).update(over_all_discount_status="Pending")
            IndividulDiscount.objects.filter(individual__customer_id=customer_id,action_performed_type = "seek_guidance").update(action_performed_type=action_performed,discount_status=discount_status,self_analysis=self_analysis,over_all_discount_status="Pending")
            
            Self_Analysis_Cases.objects.create(
                 individual=obj,
                 alert_id=id
                )

        
            



    return HttpResponse(request,"success")
    #return render (request,'discounting/alerts.html',{'obj':obj,
    #                                                  'name':name,
                                                      
    #                                                  'cnicNumber':cnicNum,
    #                                                  'father_name':fatherName,
    #                                                  'dob':dob,
    #                                                  'pob':pob,
    #                                                  'address':addressNum,
    #                                                  'nationality':nationality,
    #                                                  'province':province,
    #                                                  'district':district,
    #                                                  'country':country,
                                                        
                                                      
    #                                                  } )

def rejectDiscountUpdate(request):
    print("in seek guidance fun")
    #obj=IndividulDiscount.objects.filter(customer_id=cid)
        

    if request.method=="POST":
        id=request.POST.get("reject_customer_alert_id")
        print(id)
        customer_id=request.POST.get("reject_customer_id")
        print(customer_id)
        print(type(customer_id))
        action_performed=request.POST.get("action_performed")
        discount_status="Rejected"


        suspect_type=request.POST.getlist("suspect_type")
        funds_freeze=request.POST.get("fund_freeze")
        transaction_reject=request.POST.get("transaction_reject")
        account_reject=request.POST.get("account_reject")

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
            IndividulDiscount.objects.filter(individual__customer_id=customer_id).update(action_performed_type="Rejection",over_all_discount_status="Rejected",discount_status=discount_status)
            
            IndividulDiscount.objects.filter(id=id).update(action_performed_type="Rejection",over_all_discount_status="Rejected",discount_status=discount_status)
           
            STRData.objects.create(individual=ind_obj,
                                            suspect_type=suspect_type,
                                           
                                            bank_relationship= bank_relationship,
                                            business_relationship=business_relationship,
                                            relationship_to_person=relationship_to_person,
                                            transaction_capacity=transaction_capacity,
                                            termination_date=termination_date, 
                                            funds_freeze= funds_freeze,
                                            transaction_reject=transaction_reject,
                                            account_reject=account_reject
                                          )

            #_email_fund_freeze(customer_id)
            #Central_Bank_Email_Record.objects.create(
            #    customer_id=customer_id,
            #    customer_type="Individual"
            #    )
            #RiskRating.objects.filter(individual__customer_id=customer_id).update(reporting_status="STR Filed")
            print("after creating customer customer ")
        else:
            print("in else")
            IndividulDiscount.objects.filter(individual__customer_id=customer_id).update(over_all_discount_status="Rejected")
            IndividulDiscount.objects.filter(individual__customer_id=customer_id).update(action_performed_type="Rejection")
            IndividulDiscount.objects.filter(id=id).update(action_performed_type=action_performed,discount_status=discount_status)

            STRData.objects.filter(individual__customer_id=customer_id).update(suspect_type=suspect_type,
                                            
                                            bank_relationship= bank_relationship,
                                            business_relationship=business_relationship,
                                            relationship_to_person=relationship_to_person,
                                            transaction_capacity=transaction_capacity,
                                            termination_date=termination_date,
                                            funds_freeze= funds_freeze,
                                            transaction_reject=transaction_reject,
                                            account_reject=account_reject
                                                                                    )



        
    return HttpResponse(request,"success")
   

def ViewDiscounted(request,id):
    print("in view discounted function")
    obj=IndividulDiscount.objects.filter(individual__customer_id=id)
    #obj_guidance=IndividulDiscount.objects.filter(individual__customer_id=id, action_performed_type = "seek_guidance" )
    #obj_passed=IndividulDiscount.objects.filter(individual__customer_id=id,action_performed_type = " ")
    myFilter=IndividualDiscountFilter()
    addressNum=request.session.get("addressNum")
    name=request.session.get("name")
    cnicNum=request.session.get("cnicNum")
    fatherName=request.session.get("fatherName")
    dob=request.session.get("dob")
    pob=request.session.get("pob")
    nationality=request.session.get("nationality")
    province=request.session.get("province")
    district=request.session.get("district")
    country=request.session.get("country")


  
    return render (request,'discounting/discounting_individual.html',{'obj':obj,
                                                                     
                                                      'name':name,
                                                      
                                                      'cnicNumber':cnicNum,
                                                      'father_name':fatherName,
                                                      'dob':dob,
                                                      'pob':pob,
                                                      'address':addressNum,
                                                      'nationality':nationality,
                                                      'province':province,
                                                      'district':district,
                                                      'country':country,
                                                      'myFilter':myFilter, 
                                                      
                                                      } )



def _email_central_bank(id):
    print("Central bank email")
    subject="True Match Found!"
    message= """ With reference to the subject matter, we would like to bring in your attention that during the course of customer on-boarding/Periodic Screening, 
                 our potential/existing customer details are matched with the listed individual/entity details. 
                 Hence, we have rejected/closed the account, freeze the funds and filed an STR accordingly.
                 Hence, we are reporting the account as per the regulations.
                """

    sender="shahid@stifle.io"
    send_mail(subject, message,
                      sender, ["raishahidrai@gmail.com"],
                      fail_silently=False,
                      
                      )
    

def _email_fund_freeze(id):
    print("Funds Freeze email")
    subject="True Match Found!"
    message= """ We have found a True Match against Sanction List with the detailed attached herewith and accordingly
                 we would like to recommend funds to be frozen as per our AML/CFT/CPF Policies and Procedures.
                """

    sender="shahid@stifle.io"
    send_mail(subject, message,
                      sender, ["raishahidrai@gmail.com"],
                      fail_silently=False,
                      
                      )
    


def _email_account_reject(id):
    print("Central bank email")
    subject="True Match Found!"
    message= """ We have found a True Match against Sanction List with the detailed attached herewith and accordingly
                 we would like to reject this account as per our AML/CFT/CPF Policies and Procedures.
                """

    sender="shahid@stifle.io"
    send_mail(subject, message,
                      sender, ["raishahidrai@gmail.com"],
                      fail_silently=False,
                      
                      )



def entity_alerts_api(request,id):
    context={}
    
    print("in org ")
    print("the value of id is :",id)
    

    obj=EntityAlerts.objects.filter(org_id=id)
    if not obj: 
        #org_name = request.POST.get('org_name')
        #org_registeration=request.POST.get('org_registeration')
        #org_city=request.POST.get('org_city')
        #org_province=request.POST.get('org_province')

        #org_country=request.POST.getlist('org_country')
        #org_country=''.join(map(str, org_country))
        org_obj=Organization.objects.get(organization_id =id)
        fuzz_score = FuzzyScore.objects.get(id = 1)

        #request.session['name'] = org_name
        
        #request.session['registeration'] = org_registeration

        #request.session['country'] = org_country
        #request.session['city'] = org_city
        #request.session['province'] = org_province   
       
        print("before calling api")
        

        url = "https://stifle.live/api/scoring/alert"

        payload = json.dumps({
        "name":  org_obj.corporation_name,
        "father_name": "",
        "name_fuzzy_score": fuzz_score.score
        })
        headers = {
        'Content-Type': 'application/json',
        'Authorization':'Token 230e0b46ddbc15aac4de47875f9ac03eacdfbb5f'
         }

        response = requests.request("POST", url, headers=headers, data=payload)
        print("after api request")
        #print(response.text)
        reponse = json.loads(response.text)
        for data in reponse:
            print(data)
            
            EntityAlerts.objects.create(
            entity=org_obj,
            org_id = id,
            dataID = data['dataid'],
            name = data['name'],
            
            alias = data['alias'],
            alias_quality = data['alias_quality'],
            id_number = data['id_number'],
            
            type = data['type'],
            strength = data['strength'],
            score = data['score'],
            
            address = data['address'],
            province = data['province'],
            distict = data['district'],
            nationality = data['nationality'],
            country = data['country'],
            city = data['city'],
            list = data['list']
          )
        now =  datetime.datetime.now()
        dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
        EntityScreenStatus.objects.create(
            organization=org_obj,
            customer_type="Entity",
            screen_date=dt_string
            )
        Organization.objects.filter(organization_id=id).update(screening_performed=True)
        
        return redirect ("ViewEntityAlerts",id=str(id))
    else:
       
       return redirect  ("ViewEntityAlerts",id=str(id))




def ViewEntityAlerts(request,id):

    total_alerts=None
    org_obj = Organization.objects.get(organization_id =str(id))
    
    org_name=org_obj.corporation_name

    
    alerts = EntityAlerts.objects.filter(entity__organization_id = str(id))
    total_alerts=len(alerts)

    return render(request,'discounting/alerts_entity.html',{'alerts' : alerts, 'id' : id, 'total_alerts':total_alerts,
                                                          
                                                           'org_name':org_name,
                                                          
                                                          
                                                          })




def _discounting_nacta_org(request,id):
    print("entreing nacta function")
    
    name = request.session.get('name')    
    registeration = request.session.get('registeration')  
    province = request.session.get('province')
    district = request.session.get('district')
    country=request.session.get('country')
    city = request.session.get('city')  
    
    print(registeration)

    data = alerts_df()
    print(data)
    df = data
    #print(df)
    print("in nacta function")
    #print(df)
    
    #nacta_df = df[df['list'] =='NACTA_PROSCRIBED_PERSONS']
    nacta_df = df
    print(nacta_df)

    #df1=nacta_df[nacta_df['id_number']!='']


    #html = df1.to_html()
    
    ## write html to file
    #text_file = open("org.html", "w")
    #text_file.write(html)
    #text_file.close()



    #nacta_df = nacta_df[~nacta_df['discrepant_check'].str.endswith('1')] 
    #nacta_df=nacta_df[nacta_df['id_number']!='']
    for index, row in nacta_df.iterrows():
        print(row['id_number'])
        print(registeration)
        ID_NUMBER_Score = int(process.extract(row['id_number'], [registeration], scorer=fuzz.token_sort_ratio)[0][1])
        print(ID_NUMBER_Score)
        print("name is",name)
        Name_Score = int(process.extract(row['name'], [name], scorer=fuzz.token_sort_ratio)[0][1])
        print("name from pandas",row['name'])
        print("name score is",Name_Score)
        #Father_Name_Score = int(process.extract(row['father_name'], [fatherName], scorer=fuzz.token_sort_ratio)[0][1])
        #print("father name from pandas ",row['father_name'])
        #print("father name score is",Father_Name_Score)
        Province_Match_Score = int(process.extract(row['province'], [province], scorer=fuzz.token_sort_ratio)[0][1])
        print("province from pandas",row['province'])
        print("province match",Province_Match_Score)
        Country_Match_Score = int(process.extract(row['country'], [country], scorer=fuzz.token_sort_ratio)[0][1])
        
        #District_Match_Score = int(process.extract(row['distict'], [district], scorer=fuzz.token_sort_ratio)[0][1])
        #print("district from pandas",row['distict'])
        #print("district match",District_Match_Score )
        City_Name_Score = int(process.extract(row['city'], [city], scorer=fuzz.token_sort_ratio)[0][1])
        nacta_df.loc[index, 'id_number_score'] = ID_NUMBER_Score
        nacta_df.loc[index, 'name_score'] = Name_Score
        #nacta_df.loc[index, 'city_name_score'] = City_Name_Score  
        nacta_df.loc[index, 'province_match_score'] = Province_Match_Score  
        #nacta_df.loc[index, 'district_match_score'] = District_Match_Score 
        nacta_df.loc[index, 'city_match_score'] = City_Name_Score
        nacta_df.loc[index, 'passport_match_score'] = 0
        
        nacta_df.loc[index, 'country_match_score'] = Country_Match_Score
        nacta_df.loc[index, 'nationality_match_score'] = 0
        nacta_df.loc[index, 'address_match_score'] = 0      
        nacta_df.loc[index, 'dob_match_score'] = 0

        if ID_NUMBER_Score == 100:
            if Name_Score == 100 and City_Name_Score == 100 and Province_Match_Score==100 :            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name, Father Name, Province and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="5"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100 and City_Name_Score == 100 and Province_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name, Father Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="4"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"

                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100 and City_Name_Score == 100 and Country_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name, Father Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="4"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100 and City_Name_Score == 100:            
                nacta_df.loc[index, 'match_type']= 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name and Father Name are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor']="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC and Full Name are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100 and Province_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC, Full Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor']="3"
                nacta_df.loc[index, 'type_Discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

           

            elif Father_Name_Score == 100 and Province_Match_Score==100:            
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale']="Match Found! CNIC, Father Full Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
               
                

            elif Province_Match_Score==100:
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale']="Match Found! CNIC, District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor']="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
            elif City_Name_Score == 100 :
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale']="Match Found! CNIC, City are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor']="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            else:
                nacta_df.loc[index, 'match_type'] = 'True Positive'
                nacta_df.loc[index, 'discounting_rationale'] ="Match Found! CNIC matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "Critical"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
        else:
            if Name_Score == 100 and City_Name_Score == 100  and Province_Match_Score == 100 :                 
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name, Province and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="4"
                nacta_df.loc[index, 'type_Discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

                       
            elif Name_Score == 100 and City_Name_Score == 100 and Province_Match_Score==100:                 
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name, Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_Discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100 and City_Name_Score == 100 :  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name, District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="3"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100 and City_Name_Score == 100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name, Father Name are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Name_Score == 100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor']="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""

            elif Name_Score == 100 and Province_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
            elif Name_Score == 100 :
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Full Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""

            elif City_Name_Score == 100 and Province_Match_Score==100:  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Father Name and Province are matched"
                nacta_df.loc[index, 'discounting_factor']="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif City_Name_Score == 100 :  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Father Name and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"
            
            elif City_Name_Score == 100:  
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Father Name matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Strong"
                nacta_df.loc[index, 'match_type'] = "True Positive"
                nacta_df.loc[index, 'proposed_action'] = "Please Reject and/or Block Account/Transaction and accordingly Freeze the subject funds and file STR"
                nacta_df.loc[index, 'risk'] = "High"
                nacta_df.loc[index, 'action_performed_type'] = "reject"

            elif Province_Match_Score==100 :
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Province and District are matched"
                nacta_df.loc[index, 'discounting_factor'] ="2"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""

            

            elif Province_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Province matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action']= "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
            elif Province_Match_Score==100:
                nacta_df.loc[index, 'discounting_rationale'] ="CNIC not matched, Province matched"
                nacta_df.loc[index, 'discounting_factor'] ="1"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action']= "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""
            else:
                nacta_df.loc[index, 'discounting_rationale'] ="No Match"
                nacta_df.loc[index, 'discounting_factor'] ="0"
                nacta_df.loc[index, 'type_discounting_factor'] ="Weak"
                nacta_df.loc[index, 'match_type'] = "False Positive"
                nacta_df.loc[index, 'proposed_action'] = "Alert discounted by System based on mismatched of factors"
                nacta_df.loc[index, 'risk'] = "Low"
                nacta_df.loc[index, 'action_performed_type'] = ""

        print(nacta_df["name_score"])
    return nacta_df

def discountEntity(request,id):
    cid=id
    #cid=6512345678901
    print("in discount")
    cid=str(cid)
    engine = sqlalchemy.create_engine('postgresql://postgres:saim123@localhost:5432/compliancedb')
    ##df = pd.read_sql_table('discounting_alert',engine)
    schema_name = connection.schema_name
    print(schema_name)
    df = pd.read_sql_query(f"select * from {schema_name}.discounting_entityalerts where entity_id='%s'" %cid,engine)


    org_obj=Organization.objects.get(organization_id=cid)
    
    name = org_obj.corporation_name 
    registeration = org_obj.organization_id
    province = org_obj.province
    district = org_obj.district
    city = org_obj.city
    country = org_obj.country
    
    request.session["name"]=name
    request.session["registeration"]=registeration
    request.session["country"]=country
    request.session["province"]=province
    request.session["district"]=district
    request.session["city"]=city



    

    global alerts_df
    def alerts_df():
        return df

  
    data = df    
    #alertcount = data[1]
    print("in discount before nacta df assignment")
    nacta_df =_discounting_nacta_org(request,cid)
    nacta_df =nacta_df.fillna(0)
    #nacta_df_discrepant = _discounting_nacta_discrepant(request,cid)
    
    

    #all_list_df = _discounting_all_other_list(request,cid)

    #html = all_list_df.to_html()
    
    ## write html to file
    #text_file = open("discount-other.html", "w")
    #text_file.write(html)
    #text_file.close()

    #all_list_concat = pd.concat([nacta_df, nacta_df_discrepant, all_list_df], ignore_index=True)
    #all_list_concat = pd.concat([nacta_df, all_list_df], ignore_index=True)
    print("hello after in all list concat")
    all_list_concat=nacta_df 
    print(all_list_concat)


    all_list_concat.fillna(0)
   
    
    entity_obj=Organization.objects.get(organization_id=id)
    obj = [EntityDiscount.objects.create(  
        entity=entity_obj,
        org_registeration=cid,
        data_Id=record['dataID'],
        name  = record['name'],
        name_match_score = record['name_score'],
        alias = record['alias'],        
        id_number = record['id_number'],     
        id_number_match_score = record['id_number_score'],
       
        province=record['province'],
        province_match_score=record['province_match_score'],
        
        list = record['list'],
        type = record['type'],
            
        city = record['city'],
        city_match_score = record['city_match_score'],
        country = record['country'],
        country_match_score = record['country_match_score'],
       
        
        discounting_rationale = record['discounting_rationale'],
        discounting_factor = record['discounting_factor'],
        type_discounting_factor = record['type_discounting_factor'],
        proposed_action = record['proposed_action'],
        match_type = record['match_type'],
        risk=record['risk'],
        action_performed_type=record['action_performed_type']
    ) for record in all_list_concat.to_dict('records')]

    print("printing object")
    print(obj)
    #return HttpResponse("response")
    return render (request,'discounting/discounting_entity.html',{'obj':obj,
                                                      'name':name,
                                                      
                                                      'org_registeration':registeration,
                                                      
                                                      'province':province,
                                                      'district':district,
                                                      'country':country,
                                                      'city':city
                                                        
                                                      
                                                      } )



