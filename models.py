from __future__ import unicode_literals

from django.db import models

class Users(models.Model):
    id            = models.AutoField(primary_key=True)
    user_name     = models.CharField(max_length=35)
    password      = models.CharField(max_length=100)
    first_name    = models.CharField(max_length=35)
    last_name     = models.CharField(max_length=35)
    email         = models.CharField(max_length=100)
    mobile_no     = models.CharField(max_length=20)
    phone_no      = models.CharField(max_length=20)
    id_proof_name = models.CharField(max_length=50)
    id_proof_no   = models.CharField(max_length=50)
    city          = models.CharField(max_length=50)
    state         = models.CharField(max_length=50)
    country       = models.CharField(max_length=50)
    pincode       = models.CharField(max_length=10)
    ip_address    = models.CharField(max_length=100)
    device_type   = models.CharField(max_length=35)
    login_date    = models.DateTimeField()
    created_date  = models.DateTimeField()
    modified_date = models.DateTimeField()
    status        = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'users'

class Orders(models.Model):
    id            = models.AutoField(primary_key=True)
    user_id       = models.BigIntegerField()
    product_id    = models.BigIntegerField()
    delivery_date = models.DateTimeField(null=True)
    notes         = models.CharField(max_length=350)
    sub_total     = models.DecimalField(max_digits=10, decimal_places=2)
    delivery_fee  = models.DecimalField(max_digits=10, decimal_places=2)
    total_amount  = models.DecimalField(max_digits=10, decimal_places=2)
    tax           = models.CharField(max_length=200)
    created_date  = models.DateTimeField()
    status        = models.IntegerField(null=True)

    class Meta:
        managed = True
        db_table = 'orders'
