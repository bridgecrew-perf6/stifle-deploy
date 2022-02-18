
from django.urls import include,path
from . import views


urlpatterns =[
    
   
    path('MonitoringData',views.monitoring,name='monitoringModule'),
    path('str',views.str,name='strModule'),
     path('strForm',views.strForm,name='strForm'),
    path('updateMonitoring',views.updateMonitoring,name='updateMonitoring'),

    
    
    ]