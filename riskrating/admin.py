from django.contrib import admin
from .models import *
# Register your models here.


admin.site.register(RiskRating)

@admin.register(CustomerEDD)
class CustomerEDDAdmin(admin.ModelAdmin):
    list=['individual','verifiedDoc']


class EDDApprovalEmailRecordAdmin(admin.ModelAdmin):
    list_display=[field.name for field in EDDApprovalEmailRecord._meta.get_fields()]


admin.site.register(EDDApprovalEmailRecord,EDDApprovalEmailRecordAdmin)