from django.contrib import admin
from Apps.Catalogos.Persona.models import Persona

# Register your models here.
@admin.register(Persona)

class PersonaAdmin(admin.ModelAdmin):
     list_display = ['Nombres', 'Apellidos']
     search_fields = ['Nombres', 'Apellidos']
