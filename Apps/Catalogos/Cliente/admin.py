from django.contrib import admin
from Apps.Catalogos.Cliente.models import Cliente

# Register your models here.
@admin.register(Cliente)

class ClienteAdmin(admin.ModelAdmin):
     list_display = ['id', 'Cedula', 'PersonaId']
     search_fields = ['Cedula', 'PersonaId']