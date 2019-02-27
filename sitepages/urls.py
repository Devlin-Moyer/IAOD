from django.contrib import admin
from django.urls import path, re_path
from . import views

app_name='sitepages'

urlpatterns = [
    path('', views.home, name="home"),
    path('about/', views.about, name="about"),
    path('main_search/', views.main_search, name = "main_search"),
    path('advanced_search/', views.advanced_search, name="advanced_search"),
    path('U12_search/', views.U12_search, name="U12_search"),
    path('downloads/', views.downloads, name="downloads"),
]

