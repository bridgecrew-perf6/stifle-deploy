from django.db import models
from numpy import False_
from identification.models import Individual
from django.db.models.deletion import CASCADE

# Create your models here.



class MonitoringData(models.Model):
    individual=models.ForeignKey(Individual, on_delete=CASCADE,null=False)
    status_report=models.CharField(max_length=50, null=True, default="")
    monitoring_frequency=models.CharField(max_length=50, null=True, default="")
    monitoring_timeline=models.CharField(max_length=50, null=True, default="")
    


class STRData(models.Model):
    individual=models.ForeignKey(Individual,on_delete=CASCADE, null=False)
    suspect_type=models.CharField(max_length=300, null=True, default="")
    action_taken=models.CharField(max_length=300, null=True, default="")
    bank_relationship=models.CharField(max_length=300, null=True, default="")
    business_relationship=models.CharField(max_length=300, null=True, default="")
    relationship_to_person=models.CharField(max_length=300, null=True, default="")
    termination_date=models.CharField(max_length=300, null=True, default="")
    transaction_capacity=models.CharField(max_length=300, null=True, default="")
    funds_freeze=models.CharField(max_length=10,null=True,blank=True,default="")
    transaction_reject=models.CharField(max_length=10,null=True,blank=True,default="")
    account_reject=models.CharField(max_length=10,null=True,blank=True,default="")


