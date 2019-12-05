from django.conf.urls import url
from .views import (home,gallery,Apply,error,contactUs,ApplyForLoan,)

urlpatterns = [
    url(r'^$', home, name='home'),
    url(r'^gallery/$', gallery, name='gallery'),
    url(r'^Apply/$', Apply, name='Apply'),
    url(r'^error/$', error, name='error'),
    url(r'^contactUs/$', contactUs, name='contactUs'),
    url(r'^ApplyForLoan/$', ApplyForLoan, name='ApplyForLoan'),

    ]