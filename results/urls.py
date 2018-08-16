from django.contrib import admin
from django.urls import path, re_path
from . import views

app_name='results'

urlpatterns = [
    path('U12_list', views.U12_list, name='U12_list'),
    re_path('(?P<input_intron_id>.+)/$', views.individual, name='individual'),
    path('main_list', views.main_list),
]
