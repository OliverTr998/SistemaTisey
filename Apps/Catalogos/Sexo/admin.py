from django.contrib import admin
from Apps.Catalogos.Sexo.models import Sexo

# Register your models here.
@admin.register(Sexo)

class CategoriaAdmin(admin.ModelAdmin):
     list_display = ['Codigo', 'Descripcion']
     search_fields = ['Codigo', 'Descripcion']
