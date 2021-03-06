# Generated by Django 3.2.7 on 2021-09-20 06:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='OrderModel',
            fields=[
                ('order_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=255)),
                ('phone', models.CharField(max_length=255)),
                ('address', models.TextField(null=True)),
                ('payment_order_id', models.CharField(max_length=255)),
                ('payment_id', models.CharField(max_length=255)),
                ('delivery_desc', models.TextField(null=True)),
            ],
            options={
                'db_table': 'orders',
                'ordering': ('-order_id',),
            },
        ),
        migrations.CreateModel(
            name='OrderItemModel',
            fields=[
                ('order_item_id', models.AutoField(primary_key=True, serialize=False)),
                ('rate', models.FloatField()),
                ('qty', models.IntegerField()),
                ('price', models.FloatField()),
                ('order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='items', to='orders.ordermodel')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='ordered_products', to='products.productmodel')),
            ],
            options={
                'db_table': 'order_items',
                'ordering': ('-order_item_id',),
            },
        ),
    ]
