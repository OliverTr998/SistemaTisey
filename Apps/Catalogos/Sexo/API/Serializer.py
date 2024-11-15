from rest_framework.serializers import ModelSerializer
from Apps.Catalogos.Sexo.models import Sexo

class SexoSerializer(ModelSerializer):
    class Meta:
        model = Sexo
        fields = ['id','Codigo','Descripcion']
        # fields = '__all__'