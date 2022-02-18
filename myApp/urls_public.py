
from datetime import datetime

from django.contrib import admin
from django.urls import include, path, re_path
from django.conf import settings
import debug_toolbar
from account.views import login_user



urlpatterns = [
     path('admin/',admin.site.urls),
     #path('', include('app.urls')),
     path('',login_user, name='login'),
     path('login/',login_user, name='login'),

     

]