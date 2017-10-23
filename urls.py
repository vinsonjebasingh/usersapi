from django.conf.urls import patterns, include, url

from django.contrib import admin
from users import views
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'users.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    #url(r'^admin/', include(admin.site.urls)),
    url(r'^users/', views.Users.as_view()),
    url(r'^orders/', views.Orders.as_view()),
)
