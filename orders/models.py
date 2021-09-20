from django.db import models
from django.db.models import Sum
from products.models import ProductModel
# Create your models here.

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

    def total_qty(self):
        total_qty = self.items.aggregate(Sum('qty'))
        return total_qty["qty__sum"]

    def total_price(self):
        total_price = self.items.aggregate(Sum('price'))
        return total_price["price__sum"]


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