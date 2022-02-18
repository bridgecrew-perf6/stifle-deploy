from django.db import migrations,models
from datetime import date
import datetime
from django.db.models.fields import IntegerField
from django.utils import timezone
from django.db.models.base import Model

 
class CustomerTypeOrganization(models.Model):
   id = models.AutoField( primary_key=True)  # Field name made lowercase.
   cust_type = models.CharField( max_length=500)  # Field name made lowercase.
   risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
   risk_weight = models.IntegerField(blank=True, null=True)  # Field name made lowercase.


class OrganizationType(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    org_type = models.CharField(max_length=500,blank=True, null=True)
    
    

class CustomerType(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    cust_type = models.CharField( max_length=500)  # Field name made lowercase.
    risk_category = models.CharField(max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField( blank=True, null=True)  # Field name made lowercase.


class DeliveryChannel(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    channel = models.CharField(max_length=500)
    risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField( blank=True, null=True)  # Field name made lowercase.

    

        
class SourceFundIndividual(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    source_fund = models.CharField(max_length=500)
    
    

class EntitySourceFund(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    source_fund = models.CharField(max_length=500)
    

class IdentityDocument(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    document_type = models.CharField(max_length=500)
    


class CountryNationality(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    country = models.CharField(max_length=200)
    nationality= models.CharField(max_length=200)
    language= models.CharField(max_length=200)



class TransactionsModeIndividual(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    trans_mode = models.CharField(max_length=500)

class TransactionsModeEntity(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    trans_mode = models.CharField(max_length=500)


class IndividualAccountPurpose(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    purpose = models.CharField(max_length=500)
    



class EntityAccountPurpose(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    purpose = models.CharField(max_length=500)




class GeographicLocation(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    city = models.CharField( max_length=500)  # Field name made lowercase.
    risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField( blank=True, null=True)  # Field name made lowercase.


class HighRiskCountries(models.Model):
    serial_no = models.IntegerField(primary_key=True)     # Field name made lowercase.
    country_code = models.CharField( max_length=50,null=True, default="")  # Field name made lowercase.
    country_name = models.CharField( max_length=500, null=True, default="")  # Field name made lowercase.
    
    risk_weight = models.IntegerField(blank=True, null=True)  # Field name made lowercase.
    risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
    map_code = models.CharField( max_length=50)  # Field name made lowercase.
    


class ProductType(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    prod_type = models.CharField( max_length=500)  # Field name made lowercase.
    risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField( blank=True, null=True)  # Field name made lowercase.




class Beneficial(models.Model):
         id = models.AutoField(db_column='ID', primary_key=True)
         benefical_owner_name= models.CharField(max_length=50)
         relationship_with_customer= models.CharField(max_length=50)
         beneficial_address= models.CharField(max_length=200)
         beneficial_id= models.CharField(max_length=200)
         beneficial_document_no= models.CharField(max_length=200)
         beneficial_id_expiray=models.CharField(max_length=50,blank=True, default='', null=True)
         beneficial_nationality= models.CharField(max_length=100)
         beneficial_residence= models.CharField(max_length=100)
         is_us_persone= models.CharField(max_length=50)
         beneficial_fund_source= models.CharField(max_length=200) 

class PEP(models.Model):
   
    id = models.AutoField(db_column='ID', primary_key=True)
    high_rank_official = models.CharField(max_length=50, default='', null=True)

    high_rank_official_type = models.CharField(max_length=200, default='', null=True)
    
    legislative_assembly= models.CharField(max_length=100, default='', null=True)
    
    legislative_assembly_type = models.CharField(max_length=200, default='', null=True)
    
    judicial_official = models.CharField(max_length=100, default='', null=True)
    judicial_official_type = models.CharField(max_length=200, default='', null=True)
    
    public_function = models.CharField(max_length=50, default='', null=True)

    public_function_type = models.CharField(max_length=200, default='', null=True)
    diplomat = models.CharField(max_length=50, default='', null=True) 

    diplomat_type = models.CharField(max_length=200, default='', null=True)
    military_official = models.CharField(max_length=50, default='', null=True)

    military_official_type = models.CharField(max_length=200, default='', null=True)

    senior_position_status = models.CharField(max_length=50, default='', null=True)

    senior_position_status_type = models.CharField(max_length=200, default='', null=True)
    high_risk_ranking_official = models.CharField(max_length=50, default='', null=True)
    high_risk_ranking_official_type = models.CharField(max_length=200, default='', null=True)

    member_of_ruling_families = models.CharField(max_length=50, default='', null=True)
    member_of_ruling_familiesl_position = models.CharField(max_length=200, default='', null=True)
    immediate_family_member = models.CharField(max_length=50, default='', null=True)
    immediate_family_member_section_no = models.CharField(max_length=50, default='', null=True)

    immediate_family_member_name = models.CharField(max_length=50, default='', null=True)
    immediate_family_member_relation = models.CharField(max_length=50, default='', null=True)
    pep_wealth_source = models.CharField(max_length=50, default='', null=True)
    pep_share_holdig = models.CharField(max_length=50, default='', null=True)
    pep_country = models.CharField(max_length=50, default='', null=True)
    
    def __str__(self):
        return str(self.id)



class Individual(models.Model):
    
    account_date=models.DateTimeField(auto_now_add=True)
    cif_number = models.CharField(max_length =50,blank=True, default='', null=True)
    id_type=models.CharField(max_length =50,blank=True, default="",null=True)
    customer_id = models.CharField(primary_key=True,max_length=50,default=None)
    document_expiry_date=models.CharField(max_length=50,blank=True, default='', null=True)
    gender = models.CharField(max_length=50, default='', null=True)
    account_title = models.CharField(max_length=100, default='', null=True)
    account_number = models.CharField(max_length=50, default='', null=True)
    branch_name = models.CharField(max_length=50, default='', null=True)
    branch_code = models.CharField(max_length=50, default='', null=True)
    iban_number = models.CharField(max_length=50,default='',null=True)
    customer_name = models.CharField(max_length=50, default='', null=True)
    father_name = models.CharField(max_length=50, default='', null=True)
    birth_date=models.CharField(max_length=50,blank=True, default='', null=True)
    birth_place = models.CharField(max_length=100, default='', null=True) 
    nationality= models.CharField(max_length=50, default='', null=True)
    residence_status = models.CharField(max_length=100, default='', null=True)
    residence_country = models.CharField(max_length=100, default='', null=True)
    current_address = models.CharField(max_length=200, default='', null=True)
    permanent_addres= models.CharField(max_length=200, default='', null=True)
    district = models.CharField(max_length=100, default='', null=True)
    province = models.CharField(max_length=100, default='', null=True)
    city = models.CharField(max_length=100, default='', null=True)
    zipcode= models.CharField(max_length=100, default='', null=True)
    email =models.CharField(max_length=100, default='', null=True)
    mobile_number=models.CharField(max_length=100, default='', null=True)
    fax_number=models.CharField(max_length=100, default='', null=True)
    residential_number=models.CharField(max_length=100, default='', null=True)
    office_number=models.CharField(max_length=100, default='', null=True)
    customer_type = models.CharField(max_length=300, default='', null=True)
    product_type = models.CharField(max_length=300)
    delivery_channel = models.CharField(max_length=300, default='', null=True)
    account_purpose = models.CharField(max_length=300, default='', null=True)
    mode_of_transactions = models.CharField(max_length=300, default='', null=True)
    fund_source = models.CharField(max_length=50, default='', null=True)
    number_debit_transaction = models.CharField(max_length=100, default='', null=True)
    amount_debit_transaction = models.CharField(max_length=100, default='', null=True)
    number_credit_transaction= models.CharField(max_length=100, default='', null=True)
    amount_credit_transaction= models.CharField(max_length=100, default='', null=True)
    risk_category= models.CharField(max_length=50, default='', null=True)
    risk_score= models.IntegerField( default=0, null=True)
    diligence_type= models.CharField(max_length=50, default='', null=True)
    pep_status= models.CharField(max_length=30, default='', null=True)
    beneficial_ownership= models.CharField(max_length=50, default='', null=True)

    beneficial_details = models.ForeignKey(Beneficial, on_delete=models.CASCADE,null=True)
    pep_details = models.ForeignKey(PEP, on_delete=models.CASCADE,null=True)
    user_image=models.ImageField(upload_to='identification/customer-profile-pics/', blank=True, default="",null=True)
    screening_performed=models.BooleanField(default=False)


    def __str__(self):
        return self.customer_id
   
 
 

class Organization(models.Model):
    account_date=models.CharField(max_length=50,blank=True, default='', null=True)
    #cif_number = models.AutoField(primary_key=True)
    industry_type=models.CharField(max_length=100,blank=True, default='', null=True)
    business_nature=models.CharField(max_length=100,blank=True, default='', null=True)
    organization_id = models.CharField(primary_key=True,max_length=50)
    corporation_name = models.CharField(max_length=50, default='', null=True)
    corporation_date=models.CharField(max_length=50,blank=True, default='', null=True)
    corporation_type= models.CharField(max_length=100, default='', null=True)
    
    account_title = models.CharField(max_length=100, default='', null=True)
    account_number = models.CharField(max_length=50, default='', null=True)
    branch_name = models.CharField(max_length=50, default='', null=True)
    branch_code = models.CharField(max_length=50, default='', null=True)
    address = models.CharField(max_length=200, default='', null=True) 
    district = models.CharField(max_length=100, default='', null=True)
    province = models.CharField(max_length=100, default='', null=True)
    city = models.CharField(max_length=100, default='', null=True)
    country= models.CharField(max_length=100, default='', null=True)
    zipcode= models.CharField(max_length=100, default='', null=True)
    #partner_name= models.CharField(max_length=300, default='', null=True) 
    #partner_id= models.CharField(max_length=300, default='', null=True)
    customer_type = models.CharField(max_length=300, default='', null=True)
    product_type = models.CharField(max_length=300, default='', null=True)
    delivery_channel = models.CharField(max_length=300, default='', null=True)
    risk_category= models.CharField(max_length=50, default='', null=True)
    risk_score= models.IntegerField( default=0, null=True)
    diligence_type= models.CharField(max_length=50, default='', null=True)
    
    pep_status= models.CharField(max_length=300, default='', null=True)
    #pep_nature= models.CharField(max_length=300)

    account_purpose = models.CharField(max_length=300, default='', null=True)
    mode_of_transactions = models.CharField(max_length=300, default='', null=True)
    fund_source = models.CharField(max_length=50, default='', null=True)
    screening_performed=models.BooleanField(default=False)

    pep_details = models.ForeignKey(PEP, on_delete=models.CASCADE,null=True,blank=True)
    def __str__(self):
        return self.organization_id 

class EntityOwnershipDetails(models.Model):
    id = models.AutoField(primary_key=True)  # Field name made lowercase.
    organization=models.ForeignKey(Organization, on_delete=models.CASCADE  )
    owner_name = models.CharField(max_length=500)
    owner_id=models.CharField(max_length=100)
    owner_share=models.CharField(max_length=50,null=True)
    
    def __str__(self):
        return self.owner_name


class EntityProductType(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    prod_type = models.CharField( max_length=500)  # Field name made lowercase.
    risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField( blank=True, null=True)  # Field name made lowercase.
    
    def __str__(self):
        return self.prod_type



class EntityBusinessNature(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    industry_type = models.CharField( max_length=500)  # Field name made lowercase.
    risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField(blank=True, null=True)  # Field name made lowercase.




class EntityBaselRisk(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    country = models.CharField( max_length=500, null=True, default="")  # Field name made lowercase.
    basel_aml_index_scores=models.IntegerField(blank=True, null=True)
   
    risk_category = models.CharField( max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField(blank=True, null=True)  # Field name made lowercase.
    



class ScreenStatus(models.Model):
    id=models.AutoField(primary_key=True)
    individual=models.ForeignKey(Individual,on_delete=models.CASCADE,null=True,default="")
    customer_type=models.CharField(max_length=30,null=False,blank=False)
    screen_date=models.CharField(max_length=40,null=False,blank=False)

    #def __str__(self):
    #    return self.individual__customer_id


class EntityScreenStatus(models.Model):
    id=models.AutoField(primary_key=True)
    organization=models.ForeignKey(Organization,on_delete=models.CASCADE,null=True,default="")
    
    customer_type=models.CharField(max_length=30,null=False,blank=False)
    screen_date=models.CharField(max_length=40,null=False,blank=False)

    #def __str__(self):
    #    return self.organization__organization_id




class AccountTypeIndividual(models.Model):
    id=models.AutoField(primary_key=True)
    account_type=models.CharField(max_length=30, null=False,blank=False)

    def __str__(self):
        return self.account_type