
from django.urls import include,path
from . import views


urlpatterns =[
   
    path('individual_screeing',views.individualScreeing,name='individualScreeing'),
    path('organization_screeing', views.organizationScreeing,name= 'organizationScreeing'),
    path('organizationAlerts/<int:id>', views.organizationAlerts,name= 'organizationAlerts'),
    path('ScreenDiscountOrg/<int:id>', views.ScreenDiscountOrg,name= 'ScreenDiscountOrg'),
    
  
    path('ScreenDiscount/<int:id>',views.ScreenDiscount,name='ScreenDiscount'),
    #path('individual_screeing/<int:id>',views.fetchCustomer,name='individualScreeing'),
    
    ]