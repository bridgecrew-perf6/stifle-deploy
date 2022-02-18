from django.contrib import admin

from .models import Client
from django_tenants.admin import TenantAdminMixin


# Register your models here.
@admin.register(Client)
class ClientAdmin(TenantAdminMixin, admin.ModelAdmin):
        list_display = ('name', 'paid_until')


