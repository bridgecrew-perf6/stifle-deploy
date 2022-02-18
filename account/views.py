from django.shortcuts import render
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from django.core.checks import messages
from django.http.response import HttpResponse, HttpResponseRedirect
from django.shortcuts import render,redirect
from django.contrib.auth.backends import BaseBackend
from django.contrib.auth.hashers import check_password
from django.contrib.auth.models import User 
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from .models import * 
from django.contrib.auth.decorators import login_required
from django.urls import resolve



def login_user(request):

    if request.method=="POST":
        username=request.POST.get("user_name")
        password=request.POST.get("password")

        user=authenticate(username=username, password=password)
        
        if user is not None:
             login(request,user)
             current_url = request.META['HTTP_HOST']

             print(current_url)

             if (current_url.find('tenant1') != -1 ):
                print("in find")
                return redirect("dashboard")

             else:

                subdomain = '.localhost:8000'
                host = request.META.get('HTTP_HOST', '')
                scheme_url = request.is_secure() and "https" or "http"
                url = f"{scheme_url}://{subdomain}.{host}"
             
                return HttpResponseRedirect('http://tenant1.localhost:8000/')


            # return redirect("dashboard")
        else:
            messages.info(request, "User Name or Password is incorrect")
            return redirect("login")
    else:
        return render (request,"base/login.html")


def logout_user(request):
    logout(request)
    return redirect("login")