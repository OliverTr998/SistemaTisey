from django.db import models

# Create your models here.
class Categoria(models.Model):
    Codigo = models.CharField(max_length=6)
    Nombre = models.CharField(max_length=150)

    class Meta:
        db_table = 'Categoria'

    def __str__(self):
        return self.Nombre
