
from django.urls import include,path
from . import views
from django.conf import Settings, settings
from django.conf.urls.static import static


urlpatterns =[
    
   
    path('riskrating',views.riskrating,name='riskrating'),
    path('showCustomer/<int:id>',views.showCustomer,name='showCustomer'),
    #path('edd',views.eddModule,name='eddModule'),
    path('updateEDD',views.updateEDD,name='updateEDD'),
    path('updateRiskrating',views.updateRiskratingStatus,name='updateRiskrating'),
    path('declineRiskrating',views.updateDeclineRiskratingStatus,name='declineRiskrating'),
    path('approveRiskrating',views.updateApproveRiskratingStatus,name='approveRiskrating'),
    path('holdRiskrating',views.updateHoldRiskratingStatus,name='holdRiskrating'),
    #path('pdf/<int:id>',views.generate_pdf,name='pdf'),
    path('sending email',views.sendEDDApprovalEmail,name='sendApprovalEmailRequest'),

    


    ]+ static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)