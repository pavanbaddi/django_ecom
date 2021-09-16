from django.db import models

# Create your models here.
class ProductModel(models.Model):
    product_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    price = models.FloatField(default=0.0)

    class Meta():
        db_table = "products"
        ordering = ( '-product_id', )