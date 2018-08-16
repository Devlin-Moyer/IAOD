from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from sitepages import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home),
    path('results/', include('results.urls', namespace='results')),
    path('sitepages/', include('sitepages.urls')),
    path('orthologs/', include('orthologs.urls')),
]

urlpatterns += staticfiles_urlpatterns()
