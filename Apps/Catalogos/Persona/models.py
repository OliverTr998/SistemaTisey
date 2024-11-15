from django.db import models

# Create your models here.
class Persona(models.Model):
    Nombres = models.CharField(max_length=100)
    Apellidos = models.CharField(max_length=100)
    Direccion = models.TextField(max_length=150)

    class Meta:
        db_table = 'Persona'

    def __str__(self):
        return f'{self.Nombres} {self.Apellidos}'
