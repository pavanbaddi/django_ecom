from products.models import ProductModel
from products.forms import ProductCreateForm
from django.shortcuts import redirect, render
from django.urls import reverse

# Create your views here.
def product_create(request):
    info = {
        'form' : ProductCreateForm()
    }

    return render(request, 'products/create.html', info)


def product_save(request):
    info = {
        'form' : ProductCreateForm(request.POST)
    }

    if info["form"].is_valid():
        query = {
            'name' : info["form"].cleaned_data.get('name'),
            'price' : info["form"].cleaned_data.get('price'),
        }
        ProductModel.objects.create(**query)

        return redirect( reverse('products:create') )
    
    print(info["form"].errors)
    return render(request, 'products/create.html', info)