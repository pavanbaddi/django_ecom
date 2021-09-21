from django.db import models

# Create your models here.
class ProductModel(models.Model):
    product_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    price = models.FloatField(default=0.0)
    content = models.TextField(null=True)
    featured_image = models.CharField(max_length=255, null=True)

    class Meta():
        db_table = "products"
        ordering = ( '-product_id', )

    @property
    def featured_image_url(self):
        url = f"/media/uploads/{self.featured_image}" if self.featured_image else None
        return url

class SlideModel(models.Model):
    slide_id = models.AutoField(primary_key=True)
    product = models.ForeignKey(to=ProductModel, related_name="slides", on_delete=models.CASCADE)
    path = models.CharField(max_length=255)
    
    class Meta():
        db_table = "slides"
        ordering = ( '-slide_id', )

    @property
    def path_url(self):
        url = f"/media/uploads/{self.path}" if self.path else None
        return url