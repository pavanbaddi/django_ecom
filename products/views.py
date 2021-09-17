from products.models import ProductModel
from products.forms import ProductCreateForm
from django.shortcuts import redirect, render
from django.urls import reverse
from django.contrib import messages

# Create your views here.
def product_list(request):
    info = {
        'list' : ProductModel.objects.filter()
    }

    

    return render(request, 'products/list.html', info)

def product_create(request):
    info = {
        'form' : ProductCreateForm()
    }

    return render(request, 'products/create.html', info)

def product_edit(request, pk):
    info = {
        'form' : None
    }

    obj = ProductModel.objects.filter(product_id=pk).first()

    print(obj)

    query = {
        'product_id' : obj.product_id,
        'name' : obj.name,
        'price' : obj.price,
    }

    info["form"] = ProductCreateForm(data=query)

    return render(request, 'products/create.html', info)


def product_save(request):
    info = {
        'form' : ProductCreateForm(request.POST)
    }

    if info["form"].is_valid():
        if info["form"].cleaned_data.get("product_id"):
            # update
            obj = ProductModel.objects.filter(product_id=info["form"].cleaned_data["product_id"]).first()

            obj.name = info["form"].cleaned_data["name"]
            obj.price = info["form"].cleaned_data["price"]
            obj.save()
            msg = "Update Successful"
        else:
            # create
            query = {
                'name' : info["form"].cleaned_data.get('name'),
                'price' : info["form"].cleaned_data.get('price'),
            }
            ProductModel.objects.create(**query)
            msg = "Product created successfully"
        
        messages.add_message(request, messages.SUCCESS, msg)
        return redirect( reverse('products:list') )
    
    # print(info["form"].errors)
    messages.add_message(request, messages.ERROR, "Please fill all the fields.")
    return render(request, 'products/create.html', info)

def product_remove(request, pk):

    ProductModel.objects.filter(product_id=pk).delete()
    messages.add_message(request, messages.SUCCESS, "Product deleted successfully.")

    return redirect(reverse('products:list'))