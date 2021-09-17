from products.models import ProductModel
from django.db import models

# Create your models here.
class CartModel(models.Model):
    cart_id = models.AutoField(primary_key=True)
    product = models.ForeignKey(to=ProductModel,  related_name="cart_items", on_delete=models.CASCADE )
    qty = models.IntegerField()

    class Meta():
        db_table = "carts"

    def price(self):
        return self.qty*self.product.price