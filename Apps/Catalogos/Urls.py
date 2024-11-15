from rest_framework.routers import DefaultRouter
from django.urls import path, include
from Apps.Catalogos.Categoria.API.CategoriaAPI import CategoriaViewSet
from Apps.Catalogos.Sexo.API.SexoAPI import SexoView

# Definicion de todas las rutas de todas las rutas de los catalogos

router = DefaultRouter()

router.register(prefix='Categoria', basename='Categoria', viewset=CategoriaViewSet)

router.register(prefix='Sexo', basename='Sexo', viewset=SexoView)

urlpatterns = [
    path('', include(router.urls)),
]