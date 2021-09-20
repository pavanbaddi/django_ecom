from django.core.checks.messages import Info
from django.shortcuts import render
from orders.models import OrderModel, OrderItemModel
# Create your views here.
def order_list(request):
    info = {
        'list' : OrderModel.objects.filter()
    }

    return render(request, 'orders/list.html', info)

def order_show(request, *args, **kwargs):
    info = {
        "order" : OrderModel.objects.get(pk=kwargs["pk"])
    }

    # breakpoint()

    return render(request, 'orders/show.html', info)