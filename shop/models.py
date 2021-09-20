from django.db.models.fields import related
from products.models import ProductModel
from django.db import models
from django.db.models import Sum


# Create your models here.
class CartModel(models.Model):
    cart_id = models.AutoField(primary_key=True)
    product = models.ForeignKey(to=ProductModel,  related_name="cart_items", on_delete=models.CASCADE )
    qty = models.IntegerField()

    class Meta():
        db_table = "carts"

    def price(self):
        return self.qty*self.product.price


    def total_qty(self):
        total_qty = CartModel.objects.filter().aggregate(Sum('qty'))
        return total_qty["qty__sum"]

    def total_price(self):
        total_price = 0
        items = CartModel.objects.filter()

        if items.count:
            for item in items:
                total_price += item.qty*item.product.price 
        
        return total_price

