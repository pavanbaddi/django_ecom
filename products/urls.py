from django.urls import path
from products import views
app_name = "products"

urlpatterns = [
    path( '', views.product_list, name="list" ),
    path( 'create', views.product_create, name="create" ),
    path( 'save', views.product_save, name="save" ),
    path( 'edit/<int:pk>', views.product_edit, name="edit" ),
    path( 'remove/<int:pk>', views.product_remove, name="remove" ),
]