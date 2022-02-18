from django.db import models
from django.contrib.auth.models import User
#from customers.models import Client
from django.contrib import admin


class extendedUser(models.Model):
    bank_name=models.CharField(max_length=50, default="", blank=True, null=True)
    bank_code=models.CharField(max_length=50, default="", blank=True, null=True)

    employee_code=models.CharField(max_length=50, default="", blank=True, null=True)
    designation=models.CharField(max_length=50, default="", blank=True, null=True)
    employee_status=models.CharField(max_length=50, default="", blank=True, null=True)

    contact_number=models.CharField(max_length=50, default="", blank=True, null=True)
   
    user_role=models.CharField(max_length=50, default="", blank=True, null=True)
       
    action_required=models.CharField(max_length=50, default="", blank=True, null=True)
    hod_name=models.CharField(max_length=50, default="")
    hod_designation=models.CharField(max_length=50, default="", blank=True, null=True)
    hod_cell_phone=models.CharField(max_length=50, default="", blank=True, null=True)
    hod_email=models.CharField(max_length=50, default="", blank=True, null=True)

    user=models.OneToOneField(User,on_delete=models.CASCADE)






