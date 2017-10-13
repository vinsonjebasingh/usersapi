from rest_framework import serializers
from rest_framework.validators import UniqueValidator

from .models import *
class UsersSerializer(serializers.ModelSerializer):

    id            = serializers.IntegerField(max_value=9223372036854775807, min_value=-9223372036854775808,required=False, validators=[UniqueValidator(queryset=Users.objects.all())])
    user_name     = serializers.CharField(max_length=35, required=True)
    password      = serializers.CharField(max_length=100, required=True)
    first_name    = serializers.CharField(max_length=35, required=True)
    last_name     = serializers.CharField(max_length=35)
    email         = serializers.CharField(max_length=100, required=True)
    mobile_no     = serializers.CharField(max_length=20, required=True)
    phone_no      = serializers.CharField(max_length=20)
    id_proof_name = serializers.CharField(max_length=50, required=True)
    id_proof_no   = serializers.CharField(max_length=50, required=True)
    city          = serializers.CharField(max_length=50, required=True)
    state         = serializers.CharField(max_length=50, required=True)
    country       = serializers.CharField(max_length=50, required=True)
    pincode       = serializers.CharField(max_length=10, required=True)
    ip_address    = serializers.CharField(max_length=100)
    device_type   = serializers.CharField(max_length=35)
    login_date    = serializers.DateTimeField(required=False)
    created_date  = serializers.DateTimeField(required=False)
    modified_date = serializers.DateTimeField(required=False)
    status        = serializers.IntegerField(max_value=2147483647, min_value=-2147483648, required=False)

    class Meta:
        model = Users

class OrdersSerializer(serializers.ModelSerializer):

    id            = serializers.IntegerField(max_value=9223372036854775807, min_value=-9223372036854775808,required=False, validators=[UniqueValidator(queryset=Orders.objects.all())])
    user_id       = serializers.IntegerField(max_value=9223372036854775807, min_value=-9223372036854775808,required=True)
    product_id    = serializers.IntegerField(max_value=9223372036854775807, min_value=-9223372036854775808,required=True)
    delivery_date = serializers.DateTimeField(required=False)
    notes         = serializers.CharField(max_length=350)
    sub_total     = serializers.DecimalField(decimal_places=2, max_digits=10, required=True)
    delivery_fee  = serializers.DecimalField(decimal_places=2, max_digits=10, required=True)
    total_amount  = serializers.DecimalField(decimal_places=2, max_digits=10, required=True)
    tax           = serializers.CharField(max_length=200, required=False)
    created_date  = serializers.DateTimeField(required=False)
    status        = serializers.IntegerField(max_value=2147483647, min_value=-2147483648, required=False)

    class Meta:
        model = Orders

