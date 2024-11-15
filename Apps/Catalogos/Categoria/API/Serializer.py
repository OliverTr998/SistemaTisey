from rest_framework.serializers import ModelSerializer
from Apps.Catalogos.Categoria.models import Categoria

class CartegoriaSerializer(ModelSerializer):
    class Meta:
        model = Categoria
        fields = ['id','Codigo','Nombre']
        # fields = '__all__'