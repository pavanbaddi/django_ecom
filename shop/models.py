from django.db.models.fields import related
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

class OrderModel(models.Model):
    order_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    address = models.TextField(null=True)
    payment_order_id = models.CharField(max_length=255)
    payment_id = models.CharField(max_length=255)
    delivery_desc = models.TextField(null=True)

    class Meta():
        db_table = "orders"
        ordering = ('-order_id', )


class OrderItemModel(models.Model):
    order_item_id = models.AutoField(primary_key=True)
    order = models.ForeignKey(to=OrderModel, related_name="items", on_delete=models.CASCADE)
    product = models.ForeignKey(to=ProductModel, related_name="ordered_products", on_delete=models.CASCADE)
    rate = models.FloatField()
    qty = models.IntegerField()
    price = models.FloatField()

    class Meta():
        db_table = "order_items"
        ordering = ('-order_item_id', )