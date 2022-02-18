from django.db import models
from django.db.models.deletion import CASCADE
from pymysql import NULL
from identification.models import *
# Create your models here.

class FuzzyScore(models.Model):
    score = models.IntegerField()
class Alert(models.Model):
    # alert_id = models.CharField(max_length=100)
    individual = models.ForeignKey(Individual, on_delete=CASCADE, null=True)
    case_id=models.CharField(max_length=25,null=True,blank=True)
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
    pob = models.CharField(max_length=200, blank=True, null=True)
    address = models.CharField(max_length=200, blank=True, null=True)
    province = models.CharField(max_length=200, blank=True, null=True)
    distict = models.CharField(max_length=200, blank=True, null=True)
    nationality = models.CharField(max_length=200, blank=True, null=True)
    country = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=200, blank=True, null=True)
    list = models.CharField(max_length=200, blank=True, null=True)

    

class EntityAlerts(models.Model):
    entity = models.ForeignKey(Organization, on_delete=models.CASCADE, null=True)
    
    org_id=models.CharField(max_length=100, blank=True, null=True)
    case_id=models.CharField(max_length=25,null=True,blank=True)
   
    dataID = models.CharField(max_length=200, blank=True, null=True)
    name = models.CharField(max_length=200, blank=True, null=True)
    
    alias = models.CharField(max_length=200, blank=True, null=True)
    alias_quality = models.CharField(max_length=200, blank=True, null=True)
    id_number = models.CharField(max_length=200, blank=True, null=True)
    type = models.CharField(max_length=200, blank=True, null=True)
    strength = models.CharField(max_length=200, blank=True, null=True)
    score = models.CharField(max_length=200, blank=True, null=True)
    address = models.CharField(max_length=200, blank=True, null=True)
    province = models.CharField(max_length=200, blank=True, null=True)
    distict = models.CharField(max_length=200, blank=True, null=True)
    nationality = models.CharField(max_length=200, blank=True, null=True)
    country = models.CharField(max_length=200, blank=True, null=True)
    city = models.CharField(max_length=400, blank=True, null=True)
    list = models.CharField(max_length=200, blank=True, null=True)

    def __str__(self):
        return self.name


class IndividulDiscount(models.Model):
    individual=models.ForeignKey(Individual, on_delete=CASCADE, null=True) 
    case_id=models.CharField(max_length=25,null=True,blank=True)
    data_Id = models.CharField(max_length=100, blank=True, null=True)
    name = models.CharField(max_length=1000, blank=True, null=True)
    name_match_score= models.CharField(max_length=20, blank=True, null=True)
    alias = models.CharField(max_length=1000, blank=True, null=True)
    alias_quality = models.CharField(max_length=50, blank=True, null=True)
    id_number = models.CharField(max_length=100, blank=True, null=True)
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
    city = models.CharField(max_length=300, blank=True, null=True)
    city_match_score= models.CharField(max_length=20, blank=True, null=True)
    discrepant_check = models.CharField(max_length=20, blank=True, null=True)
    list = models.CharField(max_length=100, blank=True, null=True)   
    type = models.CharField(max_length=15, blank=True, null=True)
    score = models.CharField(max_length=10, blank=True, null=True)
    strength = models.CharField(max_length=10, blank=True, null=True)
    match_type = models.CharField(max_length=20)
    proposed_action = models.CharField(max_length=500, blank=True, null=True)
    risk = models.CharField(max_length=20, blank=True, null=True)
    discounting_rationale = models.CharField(max_length=200)
    discounting_factor = models.IntegerField()
    type_discounting_factor = models.CharField(max_length=200, blank=True, null=True) 
    action_performed_type= models.CharField(max_length=100, blank=True, null=True) 
    discount_status=models.CharField(max_length=50, blank=True, null=True) 
    over_all_discount_status=models.CharField(max_length=50, blank=True, null=True,default="") 
    sent_to_L1=models.BooleanField(default=False)
    sent_to_L2=models.BooleanField(default=False)
    sent_to_MLRO=models.BooleanField(default=False)
    self_analysis=models.BooleanField(default=False)

class EntityDiscount(models.Model):
    entity = models.ForeignKey(Organization, on_delete=models.CASCADE, null=True)
    
    org_registeration=models.CharField(max_length=200, blank=True, null=True) 
    data_Id = models.CharField(max_length=100, blank=True, null=True)
    case_id=models.CharField(max_length=25,null=True,blank=True)
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
    discount_status=models.CharField(max_length=50, blank=True, null=True) 
    over_all_discount_status=models.CharField(max_length=50, blank=True, null=True,default="") 
    sent_to_L1=models.BooleanField(default=False)
    sent_to_MLRO=models.BooleanField(default=False)
    self_analysis=models.BooleanField(default=False)


    def __str__(self):
        return self.name


class MLRO_Cases(models.Model):
    id=models.AutoField(primary_key=True)
    
    alert_id=models.CharField(max_length=25,null=False,blank=False)
    customer_id=models.ForeignKey(Individual,on_delete=CASCADE, null=True,default="")
    case_status=models.CharField(max_length=25,null=True,blank=True,default="")

    def __str__(self):
        return self.alert_id

class L1_Cases(models.Model):
    id=models.AutoField(primary_key=True)
    
    alert_id=models.CharField(max_length=25,null=False,blank=False)
    individual=models.ForeignKey(Individual,on_delete=CASCADE, null=True,default="")
    case_status=models.CharField(max_length=25,null=True,blank=True,default="")


    def __str__(self):
        return self.alert_id

class L2_Cases(models.Model):
    id=models.AutoField(primary_key=True)
    
    alert_id=models.CharField(max_length=25,null=False,blank=False)
    individual=models.ForeignKey(Individual,on_delete=CASCADE, null=True,default="")
    case_status=models.CharField(max_length=25,null=True,blank=True,default="")


    def __str__(self):
        return self.alert_id

class Self_Analysis_Cases(models.Model):
    id=models.AutoField(primary_key=True)
    
    alert_id=models.CharField(max_length=25,null=False,blank=False)
    individual=models.ForeignKey(Individual,on_delete=CASCADE, null=True,default="")
    case_status=models.CharField(max_length=25,null=True,blank=True,default="")


    def __str__(self):
        return self.case_id


class Central_Bank_Email_Record(models.Model):
    id=models.AutoField(primary_key=True)
    individual=models.CharField(max_length=30,null=False,blank=False,default="")
    customer_type=models.CharField(max_length=30,null=False,blank=False,default="") #individual or entity 
    alert_id=models.CharField(max_length=25,null=False,blank=False,default="")


    def __str__(self):
        return self.individual__customer_id

      