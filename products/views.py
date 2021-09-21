from products.models import ProductModel, SlideModel
from products.forms import ProductCreateForm
from django.shortcuts import redirect, render
from django.urls import reverse
from django.contrib import messages
from ecom.utils import file_upload

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
        'content' : obj.content,
        'featured_image' : obj.featured_image,
        'featured_image_url' : obj.featured_image_url,
    }

    info["form"] = ProductCreateForm(data=query)
    info["slides"] = obj.slides.all()

    return render(request, 'products/create.html', info)


def product_save(request):
    info = {
        'form' : ProductCreateForm(request.POST)
    }

    featured_image = None
    if request.FILES.get('featured_image'):
        res = file_upload( request.FILES.get('featured_image') )

        if res["success"]:
            featured_image = res["path"]

    slides = []
    if request.FILES.getlist('path'):
        for item in request.FILES.getlist('path'):
            res = file_upload( item )

            if res["success"]:
                slides.append(res["path"])
    


    if info["form"].is_valid():
        if info["form"].cleaned_data.get("product_id"):
            # update
            obj = ProductModel.objects.filter(product_id=info["form"].cleaned_data["product_id"]).first()

            obj.name = info["form"].cleaned_data["name"]
            obj.price = info["form"].cleaned_data["price"]
            obj.content = info["form"].cleaned_data["content"]
            obj.featured_image =  featured_image if featured_image  else obj.featured_image
            obj.save()
            msg = "Update Successful"
        else:
            # create
            query = {
                'name' : info["form"].cleaned_data.get('name'),
                'price' : info["form"].cleaned_data.get('price'),
                'featured_image' : featured_image,
                'content' : info["form"].cleaned_data["content"],
            }
            obj = ProductModel.objects.create(**query)
            msg = "Product created successfully"
        
        if len(slides):
            for slide in slides:
                query= {
                    'product' : obj,
                    'path' : slide,
                }
                obj.slides.create(**query)

        messages.add_message(request, messages.SUCCESS, msg)
        return redirect( reverse('products:list') )
    
    print(info["form"].errors.as_data())
    messages.add_message(request, messages.ERROR, "Please fill all the fields.")
    return render(request, 'products/create.html', info)

def product_remove(request, pk):

    ProductModel.objects.filter(product_id=pk).delete()
    messages.add_message(request, messages.SUCCESS, "Product deleted successfully.")

    return redirect(reverse('products:list'))

def product_slide_remove(request, pk):
    
    slide = SlideModel.objects.filter(slide_id=pk).first()
    product = slide.product
    slide.delete()
    messages.add_message(request, messages.SUCCESS, "Product slide deleted successfully.")
    return redirect(reverse('products:edit', kwargs={ 'pk' : product.product_id } ))
