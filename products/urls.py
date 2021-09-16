from django.urls import path
from products import views
app_name = "products"

urlpatterns = [
    path( 'create', views.product_create, name="create" ),
    path( 'save', views.product_save, name="save" ),
]