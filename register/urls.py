from django.urls import path
from register import views

app_name="register"

urlpatterns = [
    path("", views.register_form, name="form"),
    path("user", views.register_user, name="user")
]