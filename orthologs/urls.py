from django.contrib import admin
from django.urls import path, re_path
from . import views

app_name='orthologs'

urlpatterns = [
    path('', views.ortholog_search, name="search"),
    path('list/', views.ortholog_list, name="list"),
]

