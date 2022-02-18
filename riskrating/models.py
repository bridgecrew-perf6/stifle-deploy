from django.db import models
from django.db.models.deletion import CASCADE
from identification.models import Individual
# Create your models here.


class RiskRating(models.Model):
    individual=models.ForeignKey(Individual, on_delete=CASCADE,null=False)
    riskrating_status=models.CharField(max_length=50, null=True, default="")
    risk_rating_remarks=models.CharField(max_length=300, null=True, default="")
    reason=models.CharField(max_length=200, null=True, default="")
    monitoring_status_report=models.CharField(max_length=50, null=True, default="")
    monitoring_frequency=models.CharField(max_length=50, null=True, default="")
    monitoring_timeline=models.CharField(max_length=50, null=True, default="")
    monitoring_remarks=models.CharField(max_length=300, null=True, default="")
    investigation_type=models.CharField(max_length=300, null=True, default="")
    approval_date=models.CharField(max_length=50, null=True, default="")
    monitoring_approval_date=models.CharField(max_length=50, null=True, default="")
    discounting_case_status=models.CharField(max_length=50, null=True, default="")
    action_reason=models.CharField(max_length=200, null=True, default="")
    action_performed=models.CharField(max_length=200, null=True, default="")
    discount_status=models.CharField(max_length=200, null=True, default="")
    turn_around_time=models.CharField(max_length=100, null=True, default="")
    reporting_status=models.CharField(max_length=100, null=True, default="")
    monitoring_status=models.CharField(max_length=100, null=True, default="Monitoring Pending")
    sent_to_L1=models.BooleanField(default=False)
    sent_to_MLRO=models.BooleanField(default=False)
    

#def filepath(request, filename):
#    old_filename = filename
#    timeNow = datetime.datetime.now().strftime('%Y%m%d%H:%M:%S')
#    filename = "%s%s" % (timeNow, old_filename)
#    return os.path.join('uploads/', filename)



class CustomerEDD(models.Model):
    individual=models.ForeignKey(Individual,on_delete=CASCADE)
    verifiedDoc=models.FileField(upload_to='riskrating/files/Source of Wealth Files/', blank=True, default="",null=True, max_length=250)
    approvalDoc=models.FileField(upload_to='riskrating/files/Manager Approval Files/', blank=True, default="",null=True,max_length=250)
    edd_remarks=models.CharField(max_length=200,default="", null=True, blank=True)
    


    def delete(self, *args, **kwargs):
        self.verifiedDoc.delete()
        self.approvalDoc.delete()
        super().delete(*args, **kwargs)





class EDDApprovalEmailRecord(models.Model):
    id=models.AutoField(primary_key=True)
    individual=models.ForeignKey(Individual,on_delete=CASCADE)
    
    approval_email_sent=models.BooleanField(default=False)
    approval_email_sent_time=models.CharField(max_length=40, null=True, default="")

    #def __str__(self):

    #    return self.customer_id