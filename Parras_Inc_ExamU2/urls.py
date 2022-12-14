"""Parras_Inc_ExamU2 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.shortcuts import redirect
from apps.Employees.views import *

urlpatterns = [
    path('', lambda req: redirect('/Employees/')),
    
    path('admin/', admin.site.urls),
    path('index/', index), # This is the path to the index.html file
    
    path('Employees/', include('apps.Employees.urls')),
    # path('Parts/', include('apps.Parts.urls')),
    path('Production/', include('apps.Production.urls')),
    path('Warehouse/', include('apps.Warehouse.urls')),
    path('API/', include('apps.API.urls')),
]