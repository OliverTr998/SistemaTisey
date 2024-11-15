from rest_framework.viewsets import ModelViewSet
from Apps.Catalogos.Sexo.API.Serializer import SexoSerializer
from Apps.Catalogos.Sexo.models import Sexo
from Apps.Catalogos.Categoria.API.Permission import IsAdminOrReadOnly

class SexoView(ModelViewSet):
    queryset = Sexo.objects.all()
    serializer_class = SexoSerializer


