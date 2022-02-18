"""
Definition of views.
"""

from datetime import datetime
from django.http.response import HttpResponse
from django.shortcuts import render
from django.http import HttpRequest
import requests
from requests.api import request
from django.core.mail import send_mail


def email(request):
    print("oon request")
    subject="subject"
    message="message of the email"
    sender="shahid@stifle.io"
    send_mail(subject, message,
                      sender, ["raishahidrai@gmail.com"],
                      fail_silently=False,
                      
                      )

    return HttpResponse(request,"on emails")


