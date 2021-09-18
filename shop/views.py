from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from products.models import ProductModel
from shop.models import CartModel, OrderModel
from django.contrib import messages
from django.urls import reverse
import razorpay

# Create your views here.
def shop(request):

    info = {
        "list" : ProductModel.objects.filter()
    }

    return render(request, 'shop/shop.html', info )

def buy_now(request, pk):

    product = ProductModel.objects.get(product_id=pk)

    CartModel.objects.create(**{
        'product' : product,
        'qty' : 1,
    })

    messages.add_message(request, messages.SUCCESS, "Product has been added to cart")

    return redirect( reverse('shop:shop') )


def carts(request):

    info = {
        "list" : CartModel.objects.filter()
    }

    return render(request, 'shop/cart.html', info )

def cart_remove(request, pk ):

    CartModel.objects.filter(cart_id=pk).delete()

    messages.add_message(request, messages.SUCCESS, "Item removed")

    return redirect(reverse('shop:carts'))



def checkout(request):

    info = {
        "total_price" : 3000,
        "razorpay" : {
            'key' : 'rzp_test_bItQGvIlkLU9B9',
            'secret' : 'Whpz5vK6sTBtENwSThFJIeSc',
        }
    }

    client = razorpay.Client(auth=( info["razorpay"]["key"] , info["razorpay"]["secret"] ))

    order_amount = info["total_price"]
    order_currency = 'INR'
    order_receipt = '151651561'
    notes = {'Shipping address': 'Bommanahalli, Bangalore'}   # OPTIONAL
    
    # breakpoint()

    info["order"] = client.order.create(dict( amount=order_amount, currency=order_currency, receipt=order_receipt, notes=notes ) )



    return render(request, 'shop/checkout.html', info )


def order_save(request):

    query = {
        'name' : request.POST.get('name'),
        'phone' : request.POST.get('phone'),
        'address' : request.POST.get('address'),
        'payment_order_id' : request.POST.get('razorpay_order_id'),
        'payment_id' : request.POST.get('razorpay_payment_id'),
    }

    order = OrderModel.objects.create(**query)

    cart_items = CartModel.objects.filter()

    for item in cart_items:
        query = {
           'order' : order,
           'product' : item.product, 
           'rate' : item.product.price, 
           'qty' : item.qty, 
           'price' : item.qty*item.product.price, 
        }
        order.items.create(**query)

    cart_items.delete()

    messages.add_message(request, messages.SUCCESS, "Order saved successfully")

    return redirect(reverse('shop:shop'))