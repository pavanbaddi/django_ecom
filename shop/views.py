from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from products.models import ProductModel
from shop.models import CartModel
from django.contrib import messages
from django.urls import reverse

# Create your views here.
def shop(request):

    info = {
        "list" : ProductModel.objects.filter()
    }

    return render(request, 'shop/shop.html', info )

def buy_now(request, pk):

    product = ProductModel.objects.get(product_id=pk)

    CartModel.objects.create(**{
        'product_id' : product,
        'qty' : 1,
    })

    messages.add_message(request, messages.SUCCESS, "Product has been added to cart")

    return redirect( reverse('shop:shop') )


def carts(request):

    info = {
        "list" : CartModel.objects.filter()
    }

    return render(request, 'shop/cart.html', info )
