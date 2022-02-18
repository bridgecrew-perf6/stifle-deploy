
from django.urls import include,path
from . import views



urlpatterns =[
   
    path('dashboard',views.dashboard, name='dashboard'),
    
    path('createUser',views.createuser,name='createuser'),
    path('listmanagment',views.listmanagment,name='listmanagment'),
    path('updateFuzzyScore',views.updateFuzzyScore,name='updateFuzzyScore'), 
   



    ]