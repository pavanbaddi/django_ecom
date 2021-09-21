from django.urls import path
from django.urls.base import reverse
from django.views.generic.base import RedirectView

app_name="home"

urlpatterns = [
    path("", RedirectView.as_view(url='shop/' ), name="home" ),
]