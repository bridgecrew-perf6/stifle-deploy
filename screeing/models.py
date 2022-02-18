from django.db import migrations,models
from datetime import date
import datetime

from django.db.models.base import Model

from identification.models import Organization

# Create your models here.


    


class ScreenAlert(models.Model):
    # alert_id = models.CharField(max_length=100)
    customer_id=models.CharField(max_length=100, blank=True, null=True)
    #individual = models.ForeignKey(Screeingcustomer, on_delete=models.CASCADE, null=True)
    dataID = models.CharField(max_length=200, blank=True, null=True)
    name = models.CharField(max_length=200, blank=True, null=True)
    father_name = models.CharField(max_length=200, blank=True, null=True)
    alias = models.CharField(max_length=200, blank=True, null=True)
    alias_quality = models.CharField(max_length=200, blank=True, null=True)
    id_number = models.CharField(max_length=200, blank=True, null=True)
    gender = models.CharField(max_length=200, blank=True, null=True)
    type = models.CharField(max_length=200, blank=True, null=True)
    strength = models.CharField(max_length=200, blank=True, null=True)
    score = models.CharField(max_length=200, blank=True, null=True)
    dob = models.CharField(max_length=200, blank=True, null=True)
    pob = models.CharField(max_length=400, blank=True, null=True)
    address = models.CharField(max_length=200, blank=True, null=True)
    province = models.CharField(max_length=200, blank=True, null=True)
    distict = models.CharField(max_length=200, blank=True, null=True)
    nationality = models.CharField(max_length=200, blank=True, null=True)
    country = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=400, blank=True, null=True)
    list = models.CharField(max_length=200, blank=True, null=True)
   
class ScrenDiscount(models.Model):
    customer_id=models.CharField(max_length=200, blank=True, null=True) 
    data_Id = models.CharField(max_length=100, blank=True, null=True)
    name = models.CharField(max_length=1000, blank=True, null=True)
    name_match_score= models.CharField(max_length=20, blank=True, null=True)
    alias = models.CharField(max_length=1000, blank=True, null=True)
    alias_quality = models.CharField(max_length=100, blank=True, null=True)
    id_number = models.CharField(max_length=200, blank=True, null=True)
    id_number_match_score= models.CharField(max_length=20, blank=True, null=True)
    passportNum = models.CharField(max_length=100, blank=True, null=True)
    passport_match_score= models.CharField(max_length=20, blank=True, null=True)
    father_name = models.CharField(max_length=500, blank=True, null=True)
    father_name_match_score= models.CharField(max_length=20, blank=True, null=True)
    gender = models.CharField(max_length=20, blank=True, null=True)
    dob = models.CharField(max_length=500, blank=True, null=True)
    dob_match_score= models.CharField(max_length=20, blank=True, null=True)
    pob = models.CharField(max_length=500, blank=True, null=True)  
    address = models.CharField(max_length=1000, blank=True, null=True)
    address_match_score= models.CharField(max_length=20, blank=True, null=True)    
    province = models.CharField(max_length=1000, blank=True, null=True)
    province_match_score = models.CharField(max_length=20, blank=True, null=True)
    district = models.CharField(max_length=1000, blank=True, null=True)
    district_match_score = models.CharField(max_length=20, blank=True, null=True)
    nationality = models.CharField(max_length=100, blank=True, null=True)
    nationality_match_score= models.CharField(max_length=20, blank=True, null=True)
    country = models.CharField(max_length=100, blank=True, null=True)
    country_match_score= models.CharField(max_length=20, blank=True, null=True)
    city = models.CharField(max_length=100, blank=True, null=True)
    city_match_score= models.CharField(max_length=20, blank=True, null=True)
    discrepant_check = models.CharField(max_length=20, blank=True, null=True)
    list = models.CharField(max_length=100, blank=True, null=True)   
    type = models.CharField(max_length=100, blank=True, null=True)
    score = models.CharField(max_length=10, blank=True, null=True)
    strength = models.CharField(max_length=10, blank=True, null=True)
    match_type = models.CharField(max_length=20)
    proposed_action = models.CharField(max_length=500, blank=True, null=True)
    risk = models.CharField(max_length=20, blank=True, null=True)
    discounting_rationale = models.CharField(max_length=200)
    discounting_factor = models.IntegerField()
    type_discounting_factor = models.CharField(max_length=200, blank=True, null=True) 
    action_performed_type= models.CharField(max_length=100, blank=True, null=True) 



class ScreenEntityAlerts(models.Model):
    # alert_id = models.CharField(max_length=100)
    org_registeration=models.CharField(max_length=100, blank=True, null=True)
    #individual = models.ForeignKey(Screeingcustomer, on_delete=models.CASCADE, null=True)
    dataID = models.CharField(max_length=200, blank=True, null=True)
    name = models.CharField(max_length=200, blank=True, null=True)
    #father_name = models.CharField(max_length=200, blank=True, null=True)
    alias = models.CharField(max_length=200, blank=True, null=True)
    alias_quality = models.CharField(max_length=200, blank=True, null=True)
    id_number = models.CharField(max_length=200, blank=True, null=True)
    #gender = models.CharField(max_length=200, blank=True, null=True)
    type = models.CharField(max_length=200, blank=True, null=True)
    strength = models.CharField(max_length=200, blank=True, null=True)
    score = models.CharField(max_length=200, blank=True, null=True)
    #dob = models.CharField(max_length=200, blank=True, null=True)
    #pob = models.CharField(max_length=400, blank=True, null=True)
    address = models.CharField(max_length=200, blank=True, null=True)
    province = models.CharField(max_length=200, blank=True, null=True)
    distict = models.CharField(max_length=200, blank=True, null=True)
    nationality = models.CharField(max_length=200, blank=True, null=True)
    country = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=400, blank=True, null=True)
    list = models.CharField(max_length=200, blank=True, null=True)

    def __str__(self):
        return self.name
   
class ScreenEntityDiscount(models.Model):
    org_registeration=models.CharField(max_length=200, blank=True, null=True) 
    data_Id = models.CharField(max_length=100, blank=True, null=True)
    name = models.CharField(max_length=1000, blank=True, null=True)
    name_match_score= models.CharField(max_length=20, blank=True, null=True)
    alias = models.CharField(max_length=1000, blank=True, null=True)
    alias_quality = models.CharField(max_length=100, blank=True, null=True)
    id_number = models.CharField(max_length=200, blank=True, null=True)
    id_number_match_score= models.CharField(max_length=20, blank=True, null=True)
    #passportNum = models.CharField(max_length=100, blank=True, null=True)
    #passport_match_score= models.CharField(max_length=20, blank=True, null=True)
    #father_name = models.CharField(max_length=500, blank=True, null=True)
    #father_name_match_score= models.CharField(max_length=20, blank=True, null=True)
    #gender = models.CharField(max_length=20, blank=True, null=True)
    #dob = models.CharField(max_length=500, blank=True, null=True)
    #dob_match_score= models.CharField(max_length=20, blank=True, null=True)
    #city = models.CharField(max_length=500, blank=True, null=True)  
    address = models.CharField(max_length=1000, blank=True, null=True)
    address_match_score= models.CharField(max_length=20, blank=True, null=True)    
    province = models.CharField(max_length=1000, blank=True, null=True)
    province_match_score = models.CharField(max_length=20, blank=True, null=True)
    district = models.CharField(max_length=1000, blank=True, null=True)
    district_match_score = models.CharField(max_length=20, blank=True, null=True)
    nationality = models.CharField(max_length=100, blank=True, null=True)
    nationality_match_score= models.CharField(max_length=20, blank=True, null=True)
    country = models.CharField(max_length=100, blank=True, null=True)
    country_match_score= models.CharField(max_length=20, blank=True, null=True)
    city = models.CharField(max_length=100, blank=True, null=True)
    city_match_score= models.CharField(max_length=20, blank=True, null=True)
    #discrepant_check = models.CharField(max_length=20, blank=True, null=True)
    list = models.CharField(max_length=100, blank=True, null=True)   
    type = models.CharField(max_length=100, blank=True, null=True)
    score = models.CharField(max_length=10, blank=True, null=True)
    strength = models.CharField(max_length=10, blank=True, null=True)
    match_type = models.CharField(max_length=20)
    proposed_action = models.CharField(max_length=500, blank=True, null=True)
    risk = models.CharField(max_length=20, blank=True, null=True)
    discounting_rationale = models.CharField(max_length=200)
    discounting_factor = models.IntegerField()
    type_discounting_factor = models.CharField(max_length=200, blank=True, null=True) 
    action_performed_type= models.CharField(max_length=100, blank=True, null=True) 


    def __str__(self):
        return self.name