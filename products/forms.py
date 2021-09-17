from django import forms
from products.models import ProductModel

class ProductCreateForm(forms.Form):
    product_id = forms.CharField(max_length=255, required=False, initial="")
    name  = forms.CharField(max_length=255, required=True, initial="")
    price  = forms.FloatField(required=True)


