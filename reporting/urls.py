
from django.urls import include,path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns =[
    
   path('reporting/',views.reporting,name='reportingModule'),
   path('list_wise_report/',views.ListWiseReport,name='list_wise_report'),
   path('consolidated_kyc/',views.ConsolidatedKYC,name='consolidated_kyc'),
   path('deleteCustomer/<str:id>', views.deleteCustomer,name='deleteCustomer')

   #path('listWiseReporting/',views.listWiseReporting,name='listWiseReporting'),
   

    #path('reporting',views.reporting,name='reportingModule'),
    #path('edd',views.edd,name='eddModule'),
    
    
    ]

if settings.DEBUG:
    urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)