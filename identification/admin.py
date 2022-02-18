from django.contrib import admin

from .models import *
# Register your models here.




admin.site.register(Beneficial)
admin.site.register(TransactionsModeIndividual)
admin.site.register(IndividualAccountPurpose)
admin.site.register(SourceFundIndividual)

admin.site.register(Organization)
admin.site.register(PEP)

class IndividualAdmin(admin.ModelAdmin):
    list_display = ('customer_id', 'gender', 'account_title', 'customer_name', 'birth_date', 'birth_place', 'district', 'province', 'city', 'zipcode', 'customer_type', 'product_type', 'delivery_channel', 'risk_category', 'risk_score')
admin.site.register(Individual, IndividualAdmin)

class OrganizationTypeAdmin(admin.ModelAdmin):
    list_display=[field.name for field in OrganizationType._meta.get_fields() ]

admin.site.register(OrganizationType,OrganizationTypeAdmin)

class DeliveryChannelAdmin(admin.ModelAdmin):
    list_display = ('id', 'channel', 'risk_category', 'risk_weight')
admin.site.register(DeliveryChannel, DeliveryChannelAdmin)

class GeographicLocationAdmin(admin.ModelAdmin):
    list_display = ('id', 'city', 'risk_category', 'risk_weight')
admin.site.register(GeographicLocation, GeographicLocationAdmin)


class ProductTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'prod_type', 'risk_category', 'risk_weight')
admin.site.register(ProductType, ProductTypeAdmin)


class EntityProductTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'prod_type', 'risk_category', 'risk_weight')
admin.site.register(EntityProductType, EntityProductTypeAdmin)

class EntityBusinessNatureAdmin(admin.ModelAdmin):
    list_display = ('id', 'industry_type', 'risk_category', 'risk_weight')
admin.site.register(EntityBusinessNature, EntityBusinessNatureAdmin)

class CustomerTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'cust_type', 'risk_category', 'risk_weight')
admin.site.register(CustomerType, CustomerTypeAdmin)


class CustomerTypeOrganizationAdmin(admin.ModelAdmin):
    list_display = ('id', 'cust_type', 'risk_category', 'risk_weight')
admin.site.register(CustomerTypeOrganization, CustomerTypeOrganizationAdmin)


class HighRiskCountriesAdmin(admin.ModelAdmin):
    list_display=('serial_no','country_code','country_name','risk_weight','risk_category','map_code')

admin.site.register(HighRiskCountries,HighRiskCountriesAdmin)
#class SourceFundOrganizationAdmin(admin.ModelAdmin):
#    list_display = ('id', 'source_type')
#admin.site.register(SourceFundOrganization, SourceFundOrganizationAdmin)

class EntityBaselRiskAdmin(admin.ModelAdmin):
    list_display = [field.name for field in EntityBaselRisk._meta.get_fields()]
admin.site.register(EntityBaselRisk,EntityBaselRiskAdmin)


class IdentityDocumentAdmin(admin.ModelAdmin):
    list_display=[field.name for field in IdentityDocument._meta.get_fields()]
admin.site.register(IdentityDocument,IdentityDocumentAdmin)


class CountryNationalityAdmin(admin.ModelAdmin):
    list_display=[field.name for field in CountryNationality._meta.get_fields()]

admin.site.register(CountryNationality,CountryNationalityAdmin)


class EntityAccountPurposeAdmin(admin.ModelAdmin):
    list_display=[ field.name for field in EntityAccountPurpose._meta.get_fields()]

admin.site.register(EntityAccountPurpose,EntityAccountPurposeAdmin)



class EntitySourceFundAdmin(admin.ModelAdmin):
    list_display=[field.name for field in EntitySourceFund._meta.get_fields()]

admin.site.register(EntitySourceFund,EntitySourceFundAdmin)



class EntityOwnershipDetailsAdmin(admin.ModelAdmin):
    list_display=[field.name for field in EntityOwnershipDetails._meta.get_fields()]


admin.site.register(EntityOwnershipDetails,EntityOwnershipDetailsAdmin)

class TransactionsModeEntityAdmin(admin.ModelAdmin):
    list_display=[field.name for field in TransactionsModeEntity._meta.get_fields()]


admin.site.register(TransactionsModeEntity,TransactionsModeEntityAdmin)



class ScreenStatusAdmin(admin.ModelAdmin):
    list_display=[field.name for field in ScreenStatus._meta.get_fields()]

admin.site.register(ScreenStatus,ScreenStatusAdmin)

class EntityScreenStatusAdmin(admin.ModelAdmin):
    list_display=[field.name for field in EntityScreenStatus._meta.get_fields()]

admin.site.register(EntityScreenStatus,EntityScreenStatusAdmin)


class AccountTypeIndividualAdmin(admin.ModelAdmin):
    list_display=[field.name for field in AccountTypeIndividual._meta.get_fields()]
admin.site.register(AccountTypeIndividual,AccountTypeIndividualAdmin)