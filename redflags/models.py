from django.db import models

# Create your models here.




class  CorporateBehavior (models.Model):
    id=models.AutoField(primary_key=True)
    behaviour_type=models.CharField(max_length=40,null=True,blank=True)
    risk_weight=models.IntegerField()
    risk_category=models.CharField(max_length=20,default="",null=True,blank=True)

    def __str__(self):
        return self.behaviour_type


class NegativeNews(models.Model):
    id=models.AutoField(primary_key=True)
    news_type=models.CharField(max_length=100,null=True,blank=True)
    risk_weight=models.IntegerField()
    risk_category=models.CharField(max_length=20,default="",null=True,blank=True)

    def __str__(self):
        return self.news_type



class FATFOwnedCompany(models.Model):
    id=models.AutoField(primary_key=True)
    searched_type=models.CharField(max_length=200,null=True,blank=True)
    risk_weight=models.IntegerField()
    risk_category=models.CharField(max_length=20,default="",null=True,blank=True)

    def __str__(self):
        return self.searched_type




class demoTable(models.Model):
    id = models.AutoField( primary_key=True)  # Field name made lowercase.
    cust_type = models.CharField( max_length=500)  # Field name made lowercase.
    risk_category = models.CharField(max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField( blank=True, null=True)  # Field name made lowercase.
