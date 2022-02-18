
from datetime import datetime

from django.contrib import admin
from django.contrib.auth.views import LoginView, LogoutView
from app import forms, views
from django.urls import include, path, re_path
from django.conf import settings
import debug_toolbar
from account.views import login_user



urlpatterns = [
     path('admin/',admin.site.urls),
     #path('', include('app.urls')),
     path('',login_user, name='login'),
     path('login/',login_user, name='login'),
     path('discounting/', include('discounting.urls')),
     path('identification/', include('identification.urls')),
     path('monitoring/', include('monitoring.urls')),
     path('riskrating/', include('riskrating.urls')),
     path('screeing/', include('screeing.urls')),
     path('reporting/', include('reporting.urls')),
     path('admindashboard/', include('admindashboard.urls')),
     path('account/',include('account.urls')),
     path('__debug__/', include(debug_toolbar.urls)),
     

]


#if settings.DEBUG:
#    import debug_toolbar

#    urlpatterns +=,