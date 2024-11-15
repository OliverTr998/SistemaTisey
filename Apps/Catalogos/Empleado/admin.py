from django.contrib import admin

from Apps.Catalogos.Empleado.models import Empleado


# Register your models here.
@admin.register(Empleado)

class EmpleadoAdmin(admin.ModelAdmin):
     list_display = ['Id','INSS','PersonaId']
     search_fields = ['INSS','PersonaId']