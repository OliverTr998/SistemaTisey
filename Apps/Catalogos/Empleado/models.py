from django.db import models

from Apps.Catalogos.Persona.models import Persona


# Create your models here.
class Empleado(models.Model):
    # Id = models.AutoField(primary_key=True)
    Id = models.BigAutoField(auto_created=True,primary_key=True, verbose_name='Id')
    INSS = models.CharField(max_length=16)
    PersonaId = models.ForeignKey(Persona, on_delete=models.RESTRICT, verbose_name='Persona')

    class Meta:
        db_table = 'Empleado'

    def __str__(self):
        return self.INSS
