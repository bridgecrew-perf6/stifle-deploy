from django.contrib import admin
from .models import *
# Register your models here.


class AlertAdmin(admin.ModelAdmin):
    list_display = ('individual', 'case_id','dataID', 'name', 'father_name', 'alias', 'alias_quality', 'id_number', 'gender', 'type', 'strength', 'score', 'dob', 'pob', 'address', 'province', 'distict', 'nationality', 'country', 'city', 'list')
admin.site.register(Alert, AlertAdmin)


class EntityAlertsAdmin(admin.ModelAdmin):
    list_display=[field.name for field in EntityAlerts._meta.get_fields()]

admin.site.register(EntityAlerts,EntityAlertsAdmin)


class IndividulDiscountAdmin(admin.ModelAdmin):
    list_display = [field.name for field in IndividulDiscount._meta.get_fields()]
admin.site.register(IndividulDiscount, IndividulDiscountAdmin)


class FuzzyScoreAdmin(admin.ModelAdmin):
    list_display = ('id', 'score')
admin.site.register(FuzzyScore, FuzzyScoreAdmin)


class MLRO_CasesAdmin(admin.ModelAdmin):
     list=['id','alert_id','case_status']
admin.site.register(MLRO_Cases,MLRO_CasesAdmin)

class L1_CasesAdmin(admin.ModelAdmin):
    list=['id','alert_id','case_status']

admin.site.register(L1_Cases,L1_CasesAdmin)

class L2_CasesAdmin(admin.ModelAdmin):
    list=['id','alert_id','case_status']

admin.site.register(L2_Cases,L2_CasesAdmin)

class Self_Analysis_CasesAdmin(admin.ModelAdmin):
    list=['id','alert_id','case_status']

admin.site.register(Self_Analysis_Cases,Self_Analysis_CasesAdmin)


class Central_Bank_Email_RecordAdmin(admin.ModelAdmin):
    list=['id','customer_id','customer_type']

admin.site.register(Central_Bank_Email_Record,Central_Bank_Email_RecordAdmin)


class EntityDiscountAdmin(admin.ModelAdmin):
#    list_display = ('entity', 'dataid', 'name_score', 'name', 'alias', 'id_number', 'id_number_match_score',  'province', 'province_match_score', 'district', 'district_match_score', 'city', 'city_match_score', 'country', 'country_match_score', 'nationality', 'nationality_match_score', 'address', 'address_match_score', 'discounting_rationale', 'proposed_action', 'match_type', 'risk', 'list', 'type')
      list_display = [field.name for field in EntityDiscount._meta.get_fields()]
admin.site.register(EntityDiscount,EntityDiscountAdmin)


