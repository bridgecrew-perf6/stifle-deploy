
from django.urls import include,path
from . import views


urlpatterns =[
    
    #path('',views.index, name='index'),
    #path('discounting/<int:id>',views.discounting,name='discounting'),
    path('alerts/<int:id>',views.alerts,name='alerts'),
    #path('discount/<int:cid>',views.discount,name='discount'),

    path('discount/<int:id>',views.discount,name='discount'),
    path('customerRecords',views.customerRecords,name='customerRecords'),
    path('customerRecordsL2',views.customerRecordsL2,name='customerRecordsL2'),

    path('SeekGuidance',views.seekGuidanceUpdate,name='seekGuidanceUpdate'),
    path('ViewDiscounted/<int:id>',views.ViewDiscounted,name='ViewDiscounted'),
    path('rejectDiscountUpdate',views.rejectDiscountUpdate,name='rejectDiscountUpdate'),
    path('alertsView/<int:id>',views.alertsView,name='alertsView'),
    
    path('entityAlertsAPI/<str:id>', views.entity_alerts_api, name='entityAlertsAPI'),
    path('ViewEntityAlerts/<str:id>', views.ViewEntityAlerts, name='ViewEntityAlerts'),
    path('discountEntity/<str:id>', views.discountEntity,name='discountEntity')


    
    ]