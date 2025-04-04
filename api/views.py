from django.shortcuts import render
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated
from rest_framework.routers import DefaultRouter
from products.models import Product
from api.serializers import ProductSerializer

router = DefaultRouter()

class ProductViewSet(ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    # permission_classes = (IsAuthenticated)



router.register('products',ProductViewSet,basename='products')