from django.urls import path
from orders import views


app_name="orders"

urlpatterns = [
    path("", views.order_list, name="list"),
    path("show/<int:pk>", views.order_show, name="show"),
]