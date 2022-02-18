from datetime import datetime
from django.contrib.auth.decorators import login_required

from django.http import HttpRequest
from django.http.response import HttpResponseRedirect, JsonResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse

from django.db import connection 
from datetime import datetime
from django.contrib import messages
import requests
import json
# import csrf
from django.views.decorators.csrf import csrf_exempt

from identification.models import *
from django.db.models import Max
from redflags.models import CorporateBehavior , NegativeNews, FATFOwnedCompany







def demo(request):

    return render(request,'identification/edd.html')


@login_required(login_url="login")     
#@csrf_exempt
def addIndividual(request): 
    context = {}
    print("in add idn")
    number=0
    if(len(Individual.objects.all())==0):
        number=1
    else:
        number=len(Individual.objects.all())
        print(number)
        
        
    number= 'ST{}{}'.format(timezone.now().strftime('%y%m%d'), number)
    print(number)


    if request.method == 'POST':
        print("in requst")
        now =  datetime.datetime.now()
        account_date= now.strftime("%d/%m/%Y %H:%M:%S")

        
        #user_image= request.FILES.get('user_image')
        #cifnumber = request.POST.get('cif_number')
        id_type=request.POST.get("id_type")
        
        if (id_type.lower()=="other"):
            id_type = request.POST.get('id_type_other')


        cnic = request.POST.get('user_cnic')
        ex_date = request.POST.get('ex_date')
        gender = request.POST.get('gender')
        cif_number=request.POST.get("cif")
        accounttitle = request.POST.get('account_tite')
        accountnumber = request.POST.get('account_number')
        branch_name = request.POST.get('branch_name')
        branch_code = request.POST.get('branch_code')
        iban_number =request.POST.get('iban_number')
        customer_name = request.POST.get('customer_name')
        father_name = request.POST.get('father_name')
        birthday = request.POST.get('birthday')
       
        birth_country = request.POST.get('birth_country')
        if birth_country.lower()=="pakistan":
             birth_city = request.POST.get('birth_city')
            
        else:
            birth_city=request.POST.get('birth_place_other')



        current_address = request.POST.get('current_address')
        permanent_address = request.POST.get('permanent_address')
        district = request.POST.get('district')
        province = request.POST.get('province')
        
        zip_code = request.POST.get('zip_code')

        email = request.POST.get('email_address')
        mobile_number= request.POST.get('mobile_number')
        fax_number = request.POST.get('fax_number')
        residential_number = request.POST.get('residential_number')
        office_number = request.POST.get('office_number')

        cust_type = request.POST.get('customer_type')
        prod_type = request.POST.get('product_type')
        deliv_channel = request.POST.get('delivery_channel')
        account_purpose = request.POST.get('account_purpose')
        transaction_mode= request.POST.get('transaction_mode')
        wealth_source= request.POST.get('fund_source')
        number_debit_transaction = request.POST.get('number_debit_transaction')
        amount_debit_transaction = request.POST.get('amount_debit_transaction')
        number_credit_transaction = request.POST.get('number_credit_transaction')
        amount_credit_transaction = request.POST.get('amount_credit_transaction')
        benefical_owner = request.POST.get('benefical_owner')
        #pep_status= request.POST.get('pep_status')
        residence_status = request.POST.get('residence_status')
        residence_country=None
        if(residence_status.lower()=="resident"):
            residence_country="Pakistan"
        else:
            residence_country= request.POST.get('customer_resident_country')


        geo_loc =  request.POST.get('geo_country')
       

        pep_string="Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives"

        if cust_type.lower()==pep_string.lower():
            pep_status="yes"
            print(cust_type);
        else:
            pep_status="no"

        cust_risk_cat = ''
        if len(geo_loc.strip()) != 0 and len(cust_type.strip()) != 0 and len(prod_type.strip()) != 0 and len(deliv_channel.strip()) != 0:
            if(geo_loc.lower()=="pakistan"):
                geo_loc=request.POST.get('city')
                geoLoc = GeographicLocation.objects.filter(city=geo_loc).first()
            else:
                geo_loc=request.POST.get('geo_country')
                geoLoc = HighRiskCountries.objects.filter(country_name=geo_loc).first()

            custType = CustomerType.objects.filter(cust_type=cust_type).first()
            prodType = ProductType.objects.filter(prod_type=prod_type).first()
            devlChannel = DeliveryChannel.objects.filter(channel=deliv_channel).first()

            geoLoc_weight = 0
            custType_weight = 0
            devlChannel_weight = 0
            prodType_weight = 0
            diligence_type=""
            if geoLoc == None:
                geoLoc_weight = 0
            else:
                geoLoc_weight = geoLoc.risk_weight

            if custType == None:
                custType_weight = 0
            else:
                custType_weight = custType.risk_weight

            if devlChannel == None:
                devlChannel_weight = 0
            else:
                devlChannel_weight = devlChannel.risk_weight

            if prodType == None:
                prodType_weight = 0
            else:
                prodType_weight = prodType.risk_weight

            cust_risk_val = (geoLoc_weight + custType_weight +
                            devlChannel_weight + prodType_weight)

            if cust_risk_val >= 0 and cust_risk_val <= 49:
                cust_risk_cat = 'Low'
                diligence_type="SDD"
            elif cust_risk_val >= 50 and cust_risk_val <= 69:
                cust_risk_cat = 'Medium'
                diligence_type="CDD"
            else:
                cust_risk_cat = 'High'
                diligence_type="EDD"
        else:
            cust_risk_cat = 0





        b_data=None
        pep_data=None

        print("customer cnic is ",cnic)
        if Individual.objects.filter(customer_id=cnic).exists()==False:
             print("in false section")
             if benefical_owner.lower()=="other":
                print("im  in self block")
                benefical_owner_name = request.POST.get('benefical_owner_name')
                relationship_with_customer = request.POST.get('relationship_with_customer')
                beneficial_address = request.POST.get('beneficial_address')
                beneficial_id = request.POST.get('beneficial_id')
                beneficial_document_no = request.POST.get('beneficial_document_no')
                beneficial_expiry_date = request.POST.get('beneficial_expiry_date')
                nationality = request.POST.get('nationality')
                beneficial_residence = request.POST.get('beneficial_residence')
                if nationality== "other":
                    nationality=request.POST.get('nationality_specify')
            
                if(beneficial_residence=="non-resident"):
                    beneficial_residence=request.POST.get('residence_specify')
                
                
                us_person = request.POST.get('us_person')
                b_fund_source=request.POST.get('b_fund_source')
            
                b_data=Beneficial.objects.create(
                                  benefical_owner_name=benefical_owner_name, 
                                  relationship_with_customer= relationship_with_customer,
                                  beneficial_address= beneficial_address,
                                  beneficial_id= beneficial_id,
                                  beneficial_document_no= beneficial_document_no,
                                  beneficial_id_expiray=beneficial_expiry_date,
                                  beneficial_nationality= nationality,
                                  beneficial_residence=beneficial_residence,
                                  is_us_persone= us_person,
                                  beneficial_fund_source= b_fund_source)
                #b_data.save()
                print(b_data)
        
             if pep_status=="yes":
                print("im  in PEP block")
                high_rank_official= request.POST.get('high_rank_official')
                high_rank_official_type= request.POST.get('high_rank_official_type')
                legislative_assembly= request.POST.get('legislative_assembly')
                legislative_assembly_type= request.POST.get('legislative_assembly_type')       
                judicial_official= request.POST.get('judicial_official')
                judicial_official_type= request.POST.get('judicial_official_type')      
                public_function= request.POST.get('public_function')
                public_function_type= request.POST.get('public_function_type')       
                diplomat= request.POST.get('diplomat')
                diplomat_type= request.POST.get('diplomat_type')       
                military_official= request.POST.get('military_official')
                military_official_type= request.POST.get('military_official_type')       
                senior_position_status= request.POST.get('senior_position_status')
                senior_position_status_type= request.POST.get('senior_position_status_type')             
                high_risk_ranking_official= request.POST.get('high_risk_ranking_official')
                high_risk_ranking_official_type= request.POST.get('high_risk_ranking_official_type')
                member_of_ruling_families= request.POST.get('member_of_ruling_families')
                member_of_ruling_familiesl_position= request.POST.get('member_of_ruling_familiesl_position')        
                immediate_family_member= request.POST.get('immediate_family_member')
                immediate_family_member_section_no= request.POST.get('immediate_family_member_section_no')
                immediate_family_member_name= request.POST.get('immediate_family_member_name')
                immediate_family_member_relation= request.POST.get('immediate_family_member_relation')
                pep_wealth_source = request.POST.get('pep_wealth_source')
                pep_share_holdig = request.POST.get('pep_share_holdig')
                pep_country = request.POST.get('pep_country')
            
                if   high_rank_official.lower()=="yes":
                     high_rank_official_type= request.POST.get('high_rank_official_type')
                else:
                    high_rank_official_type=""
                if legislative_assembly.lower()=="yes":
                     legislative_assembly_type= request.POST.get('legislative_assembly_type') 
                else:
                    legislative_assembly_type=""
                if judicial_official.lower()=="yes":
                     judicial_official_type= request.POST.get('judicial_official_type')  
                else:
                    judicial_official_type=""
                if public_function.lower()=="yes":               
                     public_function_type= request.POST.get('public_function_type') 
                else:
                    public_function_type=""
                if diplomat.lower()=="yes"  :            
                     diplomat_type= request.POST.get('diplomat_type')  
                else:
                    diplomat_type=""
                if military_official.lower()=="yes":         
                     military_official_type= request.POST.get('military_official_type') 
                else:
                     military_official_type=""
                if senior_position_status.lower()=="yes":                          
                     senior_position_status_type= request.POST.get('senior_position_status_type') 
                else:
                    senior_position_status_type=""
                if high_risk_ranking_official.lower()=="yes":                          
                     high_risk_ranking_official_type= request.POST.get('high_risk_ranking_official_type')
                else:
                    high_risk_ranking_official_type=""
                if member_of_ruling_families.lower()=="yes":           
                     member_of_ruling_familiesl_position= request.POST.get('member_of_ruling_familiesl_position') 
                else:     
                    member_of_ruling_familiesl_position=""
            

                pep_data=PEP.objects.create(
                            high_rank_official =  high_rank_official,
                            high_rank_official_type = high_rank_official_type, 
                            legislative_assembly=  legislative_assembly,
                            legislative_assembly_type = legislative_assembly_type,
                            judicial_official =  judicial_official,
                            judicial_official_type = judicial_official_type,   
                            public_function = public_function,
                            public_function_type =public_function_type ,
                            diplomat =  diplomat,
                            diplomat_type = diplomat_type,
                            military_official = military_official,
                            military_official_type = military_official_type,
                            senior_position_status = senior_position_status,
                            senior_position_status_type =   senior_position_status_type, 
                            high_risk_ranking_official = high_risk_ranking_official,     
                            high_risk_ranking_official_type =high_risk_ranking_official_type ,
                            member_of_ruling_families = member_of_ruling_families,   
                            member_of_ruling_familiesl_position =  member_of_ruling_familiesl_position,
                            immediate_family_member =     immediate_family_member,
                            immediate_family_member_section_no = immediate_family_member_section_no,  
                            immediate_family_member_name =  immediate_family_member_name ,
                            immediate_family_member_relation = immediate_family_member_relation,  
                            pep_wealth_source = pep_wealth_source,   
                            pep_share_holdig = pep_share_holdig,
                            pep_country =pep_country,
                
                             )
                #pep_data.save()

                print(pep_data)

             data_obj = Individual.objects.create(
                account_date=account_date,
                id_type=id_type,
                customer_id=cnic,
                document_expiry_date=ex_date,
                gender=gender,
                cif_number=cif_number,
                account_title=accounttitle,
                account_number=accountnumber,
                branch_name=branch_name,
                branch_code=branch_code,
                iban_number=iban_number,
                customer_name=customer_name,
                father_name=father_name,
                birth_date= birthday,
                birth_place= birth_city,
                nationality=birth_country,
                residence_status=residence_status,
                current_address= current_address,
                permanent_addres=permanent_address,
                district=district,province=province,
                city=geo_loc,
                zipcode= zip_code,
                email=email, 
                mobile_number=mobile_number,
                fax_number=fax_number,
                residential_number=residential_number,
                office_number=office_number,
                customer_type=cust_type,
                product_type=prod_type,
                delivery_channel=deliv_channel,
                account_purpose=account_purpose,
                mode_of_transactions= transaction_mode,
                fund_source=wealth_source,
                number_debit_transaction=  number_debit_transaction,
                amount_debit_transaction=amount_debit_transaction,
                number_credit_transaction=number_credit_transaction,
                amount_credit_transaction= amount_credit_transaction,
                risk_category=cust_risk_cat,
                risk_score=cust_risk_val,
                diligence_type=diligence_type,
                beneficial_ownership=benefical_owner ,
                pep_status=pep_status,
                beneficial_details =b_data,
                pep_details = pep_data,
                #user_image=user_image,
                residence_country=residence_country
             )
        
             id = data_obj.customer_id
             print(id)
             #messages.add_message(request,messages.INFO,"Record Has been Added Successfully")
             context['DeliveryChannel'] = DeliveryChannel.objects.all()
             context['ProductType'] = ProductType.objects.all()
             context['GeographicLocation'] = GeographicLocation.objects.all() 
             context['CustomerType'] = CustomerType.objects.all()
             context['IndividualAccountPurpose'] = IndividualAccountPurpose.objects.all()
             context['TransactionsModeIndividual'] = TransactionsModeIndividual.objects.all()
             context['SourceFundIndividual'] = SourceFundIndividual.objects.all()
             context['high_risk_countries'] = HighRiskCountries.objects.all()
             context['cif_number'] = number
             context['AccountTypeIndividual'] = AccountTypeIndividual.objects.all()
             
             return render(request,'identification/individual_ip.html', context)
              
        else:
            print("record already exists")
            
            messages.add_message(request,messages.INFO,"Record Already Exists")

            context['IdentityDocument'] = IdentityDocument.objects.all()
            context['DeliveryChannel'] = DeliveryChannel.objects.all()
            context['ProductType'] = ProductType.objects.all()
            context['GeographicLocation'] = GeographicLocation.objects.all() 
            context['CustomerType'] = CustomerType.objects.all()
            context['IndividualAccountPurpose'] = IndividualAccountPurpose.objects.all()
            context['TransactionsModeIndividual'] = TransactionsModeIndividual.objects.all()
            context['SourceFundIndividual'] = SourceFundIndividual.objects.all()
            context['high_risk_countries'] = HighRiskCountries.objects.all()
            context['CountryNationality'] = CountryNationality.objects.all()
            context['cif_number'] = number
            context['AccountTypeIndividual'] = AccountTypeIndividual.objects.all()
            

            return render(request,'identification/identification.html', context)
    else:
        context['IdentityDocument'] = IdentityDocument.objects.all()   
        context['DeliveryChannel'] = DeliveryChannel.objects.all()
        context['ProductType'] = ProductType.objects.all()
        context['GeographicLocation'] = GeographicLocation.objects.all() 
        context['CustomerType'] = CustomerType.objects.all()
        context['IndividualAccountPurpose'] = IndividualAccountPurpose.objects.all()
        context['TransactionsModeIndividual'] = TransactionsModeIndividual.objects.all()
        context['SourceFundIndividual'] = SourceFundIndividual.objects.all()
        context['high_risk_countries'] = HighRiskCountries.objects.all()
        context['CountryNationality'] = CountryNationality.objects.all()
        context['cif_number'] = number
        context['AccountTypeIndividual'] = AccountTypeIndividual.objects.all()
        
        #context['TransactionsModeIndividual'] = TransactionsModeIndividual.objects.all() 
         
        #messages.success(request, 'Your data has been saved successfully!')
        return render(request,'identification/identification.html',context)


@login_required(login_url="login")     
@csrf_exempt
def addOrganization(request): 
    context = {}
    print("in org ")
    if(len(Organization.objects.all())==0):
        number=1
    else:
        number=len(Organization.objects.all())
        print(number)
        
        
    number= 'EST{}{}'.format(timezone.now().strftime('%y%m%d'), number)
    print(number)



    if request.method == 'POST':
        print("im in organization post")
        now =  datetime.datetime.now()
        account_date= now.strftime("%d/%m/%Y %H:%M:%S")

        #cifnumber = request.POST.get('cif_number')
        organization_id  = request.POST.get('incorporation_no')
        corporation_name = request.POST.get('corporation_name')

        corporation_date = request.POST.get('corporation_date')
        corporation_type = request.POST.get('corporation_type')
        accounttitle = request.POST.get('account_tite')
        accountnumber = request.POST.get('account_number')
        branch_name = request.POST.get('branch_name')
        branch_code = request.POST.get('branch_code')
        address = request.POST.get('address')
        district = request.POST.get('district')
        province = request.POST.get('province')
        city = request.POST.get('city')
        zip_code = request.POST.get('zip_code')
        
        partner_name = request.POST.getlist('partner_name')
        partner_id = request.POST.getlist('partner_id')
        partner_share=request.POST.getlist('partner_share')
        print("name od partner:",partner_name)
        print("IDs of partner:",partner_id)


        customer_type = request.POST.get('customer_type')
        product_type = request.POST.get('product_type')
        delivery_channel = request.POST.get('delivery_channel')
        geo_country_incorporation=request.POST.get('geo_country_incorporation')
        geo_fatf_countries=request.POST.get('geo_fatf_countries')
        geo_basel_countries=request.POST.get('geo_basel_countries')

        fatf_listed=request.POST.get('fatf_listed')
        basel_listed=request.POST.get('basel_listed')
        business_nature=request.POST.get('business_nature')
        
        sanction_listed=request.POST.get('sanction_listed')
        redflag_sanctioned_country=request.POST.get('redflag_sanctioned_country')
        redflag_corporate_behaviour=request.POST.get('corporate_behaviour')
        redflag_negative_news=request.POST.get('negative_news')
        sanction_hit_owners=request.POST.get('sanction_hit_owners')

        redflag_fatf_owned_company=request.POST.get('redflag_fatf_owned_company')
        redflag_str_filed=request.POST.get('redflag_str_filed')
        
        #pep_status = request.POST.get('pep_status')
        #pep_nature= request.POST.get('pep_nature')
        account_purpose = request.POST.get('account_purpose')
        transaction_mode= request.POST.get('transaction_mode')
        fund_source= request.POST.get('fund_source')

        

        pep_string="Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives"

        if customer_type.lower()==pep_string.lower():
            pep_status="yes"
            print(customer_type);
        else:
            pep_status="no"

        print("before pep block")
        pep_data=None
        if pep_status=="yes":
            print("im  in PEP block")
            high_rank_official= request.POST.get('high_rank_official')
            high_rank_official_type= request.POST.getlist('high_rank_official_type')
            legislative_assembly= request.POST.get('legislative_assembly')
            legislative_assembly_type= request.POST.getlist('legislative_assembly_type')       
            judicial_official= request.POST.get('judicial_official')
            judicial_official_type= request.POST.getlist('judicial_official_type')      
            public_function= request.POST.get('public_function')
            public_function_type= request.POST.getlist('public_function_type')       
            diplomat= request.POST.get('diplomat')
            diplomat_type= request.POST.getlist('diplomat_type')       
            military_official= request.POST.get('military_official')
            military_official_type= request.POST.getlist('military_official_type')       
            senior_position_status= request.POST.get('senior_position_status')
            senior_position_status_type= request.POST.getlist('senior_position_status_type')             
            high_risk_ranking_official= request.POST.get('high_risk_ranking_official')
            high_risk_ranking_official_type= request.POST.getlist('high_risk_ranking_official_type')
            member_of_ruling_families= request.POST.get('member_of_ruling_families')
            member_of_ruling_familiesl_position= request.POST.get('member_of_ruling_familiesl_position')        
            immediate_family_member= request.POST.get('immediate_family_member')
            immediate_family_member_section_no= request.POST.get('immediate_family_member_section_no')
            immediate_family_member_name= request.POST.get('immediate_family_member_name')
            immediate_family_member_relation= request.POST.get('immediate_family_member_relation')
            pep_wealth_source = request.POST.get('pep_wealth_source')
            pep_share_holdig = request.POST.get('pep_share_holdig')
            pep_country = request.POST.get('pep_country')
            
            if   high_rank_official=="Yes":
                 high_rank_official_type= request.POST.getlist('high_rank_official_type')
            else:
                high_rank_official_type=""
            if legislative_assembly=="Yes":
                 legislative_assembly_type= request.POST.getlist('legislative_assembly_type') 
            else:
                legislative_assembly_type=""
            if judicial_official=="Yes":
                 judicial_official_type= request.POST.getlist('judicial_official_type')  
            else:
                judicial_official_type=""
            if public_function=="Yes":               
                 public_function_type= request.POST.getlist('public_function_type') 
            else:
                public_function_type=""
            if diplomat=="Yes"  :            
                 diplomat_type= request.POST.getlist('diplomat_type')  
            else:
                diplomat_type=""
            if military_official=="Yes":         
                 military_official_type= request.POST.getlist('military_official_type') 
            else:
                 military_official_type=""
            if senior_position_status=="Yes":                          
                 senior_position_status_type= request.POST.getlist('senior_position_status_type') 
            else:
                senior_position_status_type=""
            if high_risk_ranking_official=="Yes":                          
                 high_risk_ranking_official_type= request.POST.getlist('high_risk_ranking_official_type')
            else:
                high_risk_ranking_official_type=""
            if member_of_ruling_families=="Yes":           
                 member_of_ruling_familiesl_position= request.POST.get('member_of_ruling_familiesl_position') 
            else:     
                member_of_ruling_familiesl_position=""
            

            pep_data=PEP.objects.create(
                        high_rank_official =  high_rank_official,
                        high_rank_official_type = high_rank_official_type, 
                        legislative_assembly=  legislative_assembly,
                        legislative_assembly_type = legislative_assembly_type,
                        judicial_official =  judicial_official,
                        judicial_official_type = judicial_official_type,   
                        public_function = public_function,
                        public_function_type =public_function_type ,
                        diplomat =  diplomat,
                        diplomat_type = diplomat_type,
                        military_official = military_official,
                        military_official_type = military_official_type,
                        senior_position_status = senior_position_status,
                        senior_position_status_type =   senior_position_status_type, 
                        high_risk_ranking_official = high_risk_ranking_official,     
                        high_risk_ranking_official_type =high_risk_ranking_official_type ,
                        member_of_ruling_families = member_of_ruling_families,   
                        member_of_ruling_familiesl_position =  member_of_ruling_familiesl_position,
                        immediate_family_member =     immediate_family_member,
                        immediate_family_member_section_no = immediate_family_member_section_no,  
                        immediate_family_member_name =  immediate_family_member_name ,
                        immediate_family_member_relation = immediate_family_member_relation,  
                        pep_wealth_source = pep_wealth_source,   
                        pep_share_holdig = pep_share_holdig,
                        pep_country =pep_country,
                
                         )
            #pep_data.save()
        


        
        org_risk_cat = ''
        
        


        redflag_fatf_owned_company=request.POST.get('redflag_fatf_owned_company')
        redflag_str_filed=request.POST.get('redflag_str_filed')



        

        custType = CustomerTypeOrganization.objects.filter(cust_type=customer_type).first()
        prodType = EntityProductType.objects.filter(prod_type=product_type).first()
        devlChannel = DeliveryChannel.objects.filter(channel=delivery_channel).first()
        geoCountry= HighRiskCountries.objects.filter(country_name=geo_country_incorporation).first()
        businessNature=EntityBusinessNature.objects.filter(industry_type=business_nature).first()
        
        negativeNews=NegativeNews.objects.filter(news_type=redflag_negative_news).first()
        corporateBehaviour=CorporateBehavior.objects.filter(behaviour_type = redflag_corporate_behaviour).first()
        fatfSearched=FATFOwnedCompany.objects.filter(searched_type = redflag_fatf_owned_company).first()
         
         
         


        geoFATF=None
        geoBaselCountry=None

        if fatf_listed.lower()=="yes":
            geo_fatf_countries=geo_fatf_countries
            geoFATF=HighRiskCountries.objects.filter(country_name= geo_fatf_countries).first()
        else:
            geo_fatf_countries=""
            geoFATF=None

        if basel_listed.lower()=="yes":
           geo_basel_countries=geo_basel_countries
           geoBaselCountry=EntityBaselRisk.objects.filter(country = geo_basel_countries).first()
        else:
            geo_basel_countries=""
            geoBaselCountry=None


           
        geoLoc_weight = 0
        custType_weight = 0
        devlChannel_weight = 0
        prodType_weight = 0
        busineeType_weight = 0 
        redFlags_total_weight=0

        redflag_sanctioned_country_risk_weight=0
        sanction_hit_owners_risk_weight=0
        redflag_str_filed_risk_weight=0

        diligence_type=""


        if geoCountry != None:
            if geoFATF !=None and  geoBaselCountry !=None:       
                geoLoc_weight =( geoCountry.risk_weight + geoFATF.risk_weight + geoBaselCountry.risk_weight )/3 
                print("geoLoc_weight is :", geoLoc_weight)

            elif geoFATF !=None:
                geoLoc_weight =( geoCountry.risk_weight + geoFATF.risk_weight + 0 )/ 3 
                print("geoLoc_weight is :", geoLoc_weight)
            else:
                geoLoc_weight =( geoCountry.risk_weight + geoBaselCountry.risk_weight + 0 )/ 3 
                print("geoLoc_weight is :", geoLoc_weight)

        if custType == None:
            custType_weight = 0
        else:
            custType_weight = custType.risk_weight

        if devlChannel == None:
            devlChannel_weight = 0
        else:
            devlChannel_weight = devlChannel.risk_weight

        if prodType == None:
            prodType_weight = 0
        else:
            prodType_weight = prodType.risk_weight

        if business_nature == None:
            busineeType_weight=0
        else: 
            busineeType_weight=businessNature.risk_weight

        if sanction_listed.lower()=="yes":
            redflag_sanctioned_country=redflag_sanctioned_country
            redflag_sanctioned_country_risk_weight=10

        else:
            redflag_sanctioned_country=""
            redflag_sanctioned_country_risk_weight=5

        if sanction_hit_owners.lower()=="yes":
            sanction_hit_owners_risk_weight=10

        else:
            sanction_hit_owners_risk_weight=5

        if redflag_str_filed.lower()=="yes":
            redflag_str_filed_risk_weight=10

        else:
            redflag_str_filed_risk_weight=5

        nnrisk_weight=negativeNews.risk_weight
        corporate_weight=corporateBehaviour.risk_weight
        fatf_weight=fatfSearched.risk_weight

        redFlags_total_weight=(nnrisk_weight + corporate_weight +fatf_weight+
                              redflag_sanctioned_country_risk_weight+
                              sanction_hit_owners_risk_weight+
                              redflag_str_filed_risk_weight
                               )/6

        


        print("before printing total score")
        print("total score geoLoc_weight :",geoLoc_weight)
        print("total score custType_weight :",custType_weight)
        print("total score  devlChannel_weight:", devlChannel_weight)
        print("total score prodType_weight :",prodType_weight)
        print("total score busineeType_weight :",busineeType_weight)
        print("total score redFlags_total_weight  :",redFlags_total_weight )

        org_risk_val = (geoLoc_weight + custType_weight + devlChannel_weight + prodType_weight+
                        busineeType_weight + redFlags_total_weight )


        if org_risk_val >= 0 and org_risk_val <= 49:
            org_risk_cat = 'Low'
            diligence_type="SDD"
        elif org_risk_val >= 50 and org_risk_val <= 69:
             org_risk_cat = 'Medium'
             diligence_type="CDD"
        else:
             org_risk_cat = 'High'
             diligence_type="EDD"
        


        data=Organization.objects.create(
            account_date=account_date,
            organization_id =organization_id ,
            corporation_name=corporation_name ,
            corporation_date=corporation_date,
            corporation_type=corporation_type,            
            account_title=accounttitle,
            account_number=accountnumber, 
            branch_name=branch_name,   
            branch_code=branch_code,     
            address= address,
            district=district,province=province,
            city=city, zipcode= zip_code, 
            
            customer_type=customer_type,
            product_type=product_type,
            delivery_channel=delivery_channel,
            pep_status=pep_status,
            #pep_nature=pep_nature,
            account_purpose=account_purpose,
            mode_of_transactions= transaction_mode,
            fund_source=fund_source,
            pep_details =pep_data,   
            risk_category=org_risk_cat, 
            risk_score=org_risk_val,
            diligence_type=diligence_type

            )
        
            
        for (a,b,c) in zip(partner_name,partner_id,partner_share):
            EntityOwnershipDetails.objects.create(
                organization=data,
                owner_name =a,
                owner_id=b,
                owner_share=c

                )

             
        
        context['DeliveryChannel'] = DeliveryChannel.objects.all()
        context['ProductType'] = ProductType.objects.all()
        context['GeographicLocation'] = GeographicLocation.objects.all() 
        context['CustomerTypeOrganization'] = CustomerTypeOrganization.objects.all()   
        context['EntityAccountPurpose'] = EntityAccountPurpose.objects.all() 
        context['EntitySourceFund'] = EntitySourceFund.objects.all() 
        context['OrganizationType'] = OrganizationType.objects.all() 
        context['EntityBusinessNature'] =  EntityBusinessNature.objects.all() 
        context['HighRiskCountries'] =  HighRiskCountries.objects.all()
        context['EntityBaselRisk'] =  EntityBaselRisk.objects.all()
        context['CorporateBehavior'] = CorporateBehavior.objects.all()
        context['NegativeNews'] =  NegativeNews.objects.all()
        context['TransactionsModeEntity'] =  TransactionsModeEntity.objects.all() 
        context['FATFOwnedCompany'] =  FATFOwnedCompany.objects.all() 
        context['CountryNationality'] =  CountryNationality.objects.all() 
        
        #context['SourceFundOrganization'] = SourceFundOrganization.objects.all()
        context['cif_number'] = number
        
        return render(request,'identification/organization.html',context)
    

    else:
           
        context['DeliveryChannel'] = DeliveryChannel.objects.all()
        context['ProductType'] = ProductType.objects.all()
        context['GeographicLocation'] = GeographicLocation.objects.all() 
        context['CustomerTypeOrganization'] = CustomerTypeOrganization.objects.all()   
        context['EntityAccountPurpose'] = EntityAccountPurpose.objects.all() 
        context['EntitySourceFund'] = EntitySourceFund.objects.all() 
        context['OrganizationType'] = OrganizationType.objects.all() 
        context['EntityBusinessNature'] =  EntityBusinessNature.objects.all() 
        context['HighRiskCountries'] =  HighRiskCountries.objects.all()
        context['EntityBaselRisk'] =  EntityBaselRisk.objects.all()
        context['CorporateBehavior'] = CorporateBehavior.objects.all()
        context['NegativeNews'] =  NegativeNews.objects.all()
        context['TransactionsModeEntity'] =  TransactionsModeEntity.objects.all() 
        context['FATFOwnedCompany'] =  FATFOwnedCompany.objects.all() 
        context['CountryNationality'] =  CountryNationality.objects.all()
        #context['SourceFundOrganization'] = SourceFundOrganization.objects.all()
        context['cif_number'] = number
        
        return render(request,'identification/organization.html',context)
    


@login_required(login_url="login")     
@csrf_exempt
def addPEP(request): 
    if request.method == 'POST':
        
        high_rank_official= request.POST.get('high_rank_official')
        high_rank_official_type= request.POST.getlist('high_rank_official_type')

        legislative_assembly= request.POST.get('legislative_assembly')
        legislative_assembly_type= request.POST.getlist('legislative_assembly_type')

        
        judicial_official= request.POST.get('judicial_official')
        judicial_official_type= request.POST.getlist('judicial_official_type')

        
        public_function= request.POST.get('public_function')
        public_function_type= request.POST.getlist('public_function_type')

        
        diplomat= request.POST.get('diplomat')
        diplomat_type= request.POST.getlist('diplomat_type')

       
        military_official= request.POST.get('military_official')
        military_official_type= request.POST.getlist('military_official_type')
        

        senior_position_status= request.POST.get('senior_position_status')
        senior_position_status_type= request.POST.getlist('senior_position_status_type')
        
       
        high_risk_ranking_official= request.POST.get('high_risk_ranking_official')
        high_risk_ranking_official_type= request.POST.getlist('high_risk_ranking_official_type')
        

        member_of_ruling_families= request.POST.get('member_of_ruling_families')
        member_of_ruling_familiesl_position= request.POST.get('member_of_ruling_familiesl_position')

        
        immediate_family_member= request.POST.get('immediate_family_member')
        immediate_family_member_section_no= request.POST.get('immediate_family_member_section_no')
        immediate_family_member_name= request.POST.get('immediate_family_member_name')
        immediate_family_member_relation= request.POST.get('immediate_family_member_relation')
        
        pep_wealth_source = request.POST.get('pep_wealth_source')
        pep_share_holdig = request.POST.get('pep_share_holdig')
        pep_country = request.POST.get('pep_country')
       
       
 
        return HttpResponse("data has been saved")
    return render(request, "identification/pep_form.html")





