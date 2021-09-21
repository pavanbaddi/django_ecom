from django import forms
from products.models import ProductModel

class ProductCreateForm(forms.Form):
    product_id = forms.CharField(max_length=255, required=False, initial="")
    name  = forms.CharField(max_length=255, required=True, initial="")
    content  = forms.CharField(required=False, initial="")
    price  = forms.FloatField(required=False)
    featured_image  = forms.CharField(max_length=255, required=False, initial="")
    featured_image_url  = forms.CharField(max_length=255, required=False, initial="")


