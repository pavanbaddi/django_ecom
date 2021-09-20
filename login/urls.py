from django.urls import path
from login import views

app_name="login"

urlpatterns = [
    path("", views.login_form, name="form"),
    path("user", views.login_user, name="user"),
    path("logout", views.logout_user, name="logout"),
]