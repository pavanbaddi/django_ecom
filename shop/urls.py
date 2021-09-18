from django.urls import path
from shop import views

app_name = "shop"

urlpatterns = [
    path('', views.shop, name="shop"),
    path('buy-now/<int:pk>', views.buy_now, name="buy_now"),
    path('carts', views.carts, name="carts"),
    path('cart-remove/<int:pk>', views.cart_remove, name="cart-remove"),
    path('checkout', views.checkout, name="checkout"),
    path('order-save', views.order_save, name="order-save"),
]