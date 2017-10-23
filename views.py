import os
from django.http import Http404
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
import rest_framework.serializers
from users.models import Users as userdetails, Orders as order
from users.serializers import *
class Users(APIView):
    def post(self, request):
        try:
            user_serializer = UsersSerializer(data=request.data)
            if user_serializer.is_valid():
                result = user_serializer.save()
                return Response(user_serializer.data, status=status.HTTP_201_CREATED)
        except ValueError as e:
            return Response({'Error Message': str(e)}, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({'Error Message': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def get(self, request, format=None):
        try:
            user_details = userdetails.objects.all()
            user_details_serializer = UsersSerializer(user_details, many=True)
            return Response(user_details_serializer.data, status=status.HTTP_201_CREATED)
        except ValueError as e:
            return Response({'Error Message':str(e)}, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({'Error Message':str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class Orders(APIView):
    def post(self, request):
        try:
            orders_serializer = OrdersSerializer(data=request.data)
            if orders_serializer.is_valid():
                result = orders_serializer.save()
                return Response(orders_serializer.data, status=status.HTTP_201_CREATED)
        except ValueError as e:
            return Response({'Error Message': str(e)}, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({'Error Message': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def get(self, request, format=None):
        try:
            orders_details = order.objects.all()
            orders_details_serializer = OrdersSerializer(orders_details, many=True)
            return Response(orders_details_serializer.data, status=status.HTTP_201_CREATED)
        except ValueError as e:
            return Response({'Error Message':str(e)}, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({'Error Message':str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


