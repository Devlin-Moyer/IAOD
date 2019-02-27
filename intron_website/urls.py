<<<<<<< HEAD
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
    path('orthologs/', include('orthologs.urls', namespace='orthologs')),
]

urlpatterns += staticfiles_urlpatterns()
=======
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
    path('orthologs/', include('orthologs.urls', namespace='orthologs')),
]

urlpatterns += staticfiles_urlpatterns()
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
