from django.contrib import admin
from .models import NegativeNews, CorporateBehavior, FATFOwnedCompany, demoTable



class CorporateBehaviorAdmin(admin.ModelAdmin):
    list_display=[field.name for field in CorporateBehavior._meta.get_fields()]


admin.site.register(CorporateBehavior,CorporateBehaviorAdmin)


class NegativeNewsAdmin(admin.ModelAdmin):
    list_display=[field.name for field in NegativeNews._meta.get_fields()]


admin.site.register(NegativeNews,NegativeNewsAdmin)


class FATFOwnedCompanyAdmin(admin.ModelAdmin):
    list_display=[field.name for field in FATFOwnedCompany._meta.get_fields()]

admin.site.register(FATFOwnedCompany,FATFOwnedCompanyAdmin)



class demoTableAdmin(admin.ModelAdmin):

    list_display=[field.name for field in demoTable._meta.get_fields()]


admin.site.register(demoTable,demoTableAdmin)