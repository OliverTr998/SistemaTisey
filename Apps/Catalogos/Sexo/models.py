from django.db import models

# Create your models here.
class Sexo(models.Model):
    Codigo = models.CharField(max_length=6)
    Descripcion = models.CharField(max_length=150)

    class Meta:
        db_table = 'Sexo'

    def __str__(self):
        return self.Descripcion
