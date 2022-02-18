"""
Django settings for myApp project.

Based on 'django-admin startproject' using Django 2.1.2.

For more information on this file, see
https://docs.djangoproject.com/en/2.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.1/ref/settings/
"""

import os
import posixpath
from decouple import config 


# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
#SECRET_KEY = 'bc9ceefe-c328-41db-a4a9-af84c1596f07'
SECRET_KEY = config('SECRET_KEY') 


# SECURITY WARNING: don't run with debug turned on in production!
#DEBUG = True
DEBUG = config('DEBUG', cast=bool) 


ALLOWED_HOSTS = ['*']

# Application references
# https://docs.djangoproject.com/en/2.1/ref/settings/#std:setting-INSTALLED_APPS


#SHARED_APPS = (
#    'django_tenants',  # mandatory
#    'customers', # you must list the app where your tenant model resides in

#    'django.contrib.contenttypes',
#    'django.contrib.staticfiles',
#    # everything below here is optional
#    'django.contrib.auth',
#    'django.contrib.sessions',
#    #'django.contrib.sites',
#    'django.contrib.messages',
#    'django.contrib.admin',
#    'django_filters',
#    'ajax_datatable',
#    'account',
#)

#TENANT_APPS = (
#    # The following Django contrib apps must be in TENANT_APPS
#    'django.contrib.contenttypes',

#    # your tenant-specific apps
#    'app',
#    'identification',
#    'screeing',
#    'riskrating',
#    'monitoring',
#    'discounting',
#    'reporting',
#    'admindashboard',
#    'account',
#    'debug_toolbar',
#    'redflags',
#)

INSTALLED_APPS = [
    
    # Add your apps here to enable them
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'rest_framework',
    'app',
    'identification',
    'screeing',
    'riskrating',
    'monitoring',
    'discounting',
    'reporting',
    'admindashboard',
    'account',
    'debug_toolbar',
    'redflags',
    
]


#INSTALLED_APPS = list(SHARED_APPS) + [app for app in TENANT_APPS if app not in SHARED_APPS]


#TENANT_MODEL = "customers.Client" # app.Model

#TENANT_DOMAIN_MODEL = "customers.Domain"  # app.Model




# Middleware framework
# https://docs.djangoproject.com/en/2.1/topics/http/middleware/
MIDDLEWARE = [
    #'django_tenants.middleware.main.TenantMainMiddleware',
    'debug_toolbar.middleware.DebugToolbarMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
   
]

ROOT_URLCONF = 'myApp.urls'
#PUBLIC_SCHEMA_URLCONF = 'myApp.urls_public'
#SHOW_PUBLIC_IF_NO_TENANT_FOUND = True


# Template configuration
# https://docs.djangoproject.com/en/2.1/topics/templates/
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'myApp.wsgi.application'
# Database
# https://docs.djangoproject.com/en/2.1/ref/settings/#databases
#DATABASES = {
#    'default': {
#        'ENGINE': 'django.db.backends.sqlite3',
#        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
#    }
#}

#DATABASES = {
#    'default': {
#        'ENGINE': 'django.db.backends.mysql',
#        'NAME': 'compliance',
#        'USER': 'root',
#        'PASSWORD' : 'saim123',
#        'HOST' :'127.0.0.1',
#        'PORT' :3306
#    }
#}

DATABASES = {

    'default': {

        'ENGINE': 'django.db.backends.postgresql_psycopg2',

        'NAME': config('DB_NAME'), 
        'USER': config('DB_USER'),
        'PASSWORD': config('DB_PASSWORD'),
        'HOST': config('DB_HOST'),
        'PORT': '5432',

    }

}
#DATABASE_ROUTERS = (
#    'django_tenants.routers.TenantSyncRouter',
#)


# Password validation
# https://docs.djangoproject.com/en/2.1/ref/settings/#auth-password-validators
AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/2.1/topics/i18n/
LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_L10N = True
USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.1/howto/static-files/
STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static')
]

MEDIA_ROOT = os.path.join(BASE_DIR,'static','media')

MEDIA_URL = '/media/'

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = config('EMAIL_HOST')
EMAIL_HOST_USER = config('EMAIL') 
EMAIL_HOST_PASSWORD =config('EMAIL_PASSWORD') 
EMAIL_PORT = 465
EMAIL_USE_SSL = True
#EMAIL_USE_SSL = True


#INTERNAL_IPS = [
   
#    '127.0.0.1',
    
#]


