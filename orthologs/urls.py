from django.contrib import admin
from django.urls import path, re_path
from . import views
from results import views as results_views

app_name = 'orthologs'

urlpatterns = [
    path('list', views.ortholog_list, name = 'list'),
    re_path(
        '(?P<input_intron_id>.+)/$',
        results_views.individual, name = 'individual'
    ),
    path('search', views.ortholog_search, name = 'search'),
]
