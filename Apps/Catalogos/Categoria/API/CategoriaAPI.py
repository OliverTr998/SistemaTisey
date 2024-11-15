import logging

from rest_framework import status
from rest_framework.decorators import action, permission_classes
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import ViewSet
from rest_framework.permissions import IsAuthenticated, IsAdminUser, IsAuthenticatedOrReadOnly, AllowAny
from Apps.Catalogos.Categoria.API.Permission import IsAdminOrReadOnly
#IsAuthenticated: solo usuarios logeados en el panel adminitrativo
#IsAdminUser: solo los usuarios administradores podran acceder
#IsAuthenticatedOrReadOnly: solo los usuarios autenticado podran hacer CDU el resto solo lectura
#Existen otros y crear nuestros propios permisos
#AllowAny: para indicar que es un endpoit libre sin aunteticacion

from Apps.Catalogos.Categoria.API.Serializer import CartegoriaSerializer
from Apps.Catalogos.Categoria.models import Categoria
from Apps.Catalogos.Categoria.API.Permission import IsAdminOrReadOnly
from Apps.Utils.ReponseData import ResponseData
from drf_yasg.utils import swagger_auto_schema
from drf_yasg import openapi
from Apps.Utils.PermisionAPI import CustomPermission


logger =  logging.getLogger(__name__)

class CategoriaViewSet(ViewSet):
    # permission_classes = [IsAuthenticated]#, CustomPermission] #[IsAdminOrReadOnly]
    queryset = Categoria.objects.all()
    serializer = CartegoriaSerializer

    def list(self, request):
        data = request
        logger.info("Get Departementos info: Lista todos los departamentos")
        logger.error("Get Departementos error: Lista todos los departamentos")
        logger.warning("Get Departementos warning: Lista todos los departamentos")
        serializer = CartegoriaSerializer(Categoria.objects.all(), many=True)
        return Response(status=status.HTTP_200_OK, data=serializer.data)

    def retrieve(self, request, pk: int):
        serializer = CartegoriaSerializer(Categoria.objects.get(pk=pk))
        return Response(status=status.HTTP_200_OK, data=serializer.data)

    def create(self, request):
        # Categoria.objects.create(Codigo=request.Post['Codigo'],Nombre=request.Post['Nombre'])
        serializer = CartegoriaSerializer(data=request.Post)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(status=status.HTTP_200_OK, data=serializer.data)

    # @action(methods=['get'], detail=False)
    # def GetCatecoriaByCodigo(self, request):
    #     codigo = request.GET.get("codigo")
    #     data = {'mensaje': f'Hola oliver{codigo}'}
    #     return Response(status=status.HTTP_200_OK, data=data)

    @action(methods=['post'], detail=False)
    def GetCategoriaByCodigoDescripcion(self, request):
        permission_classes=[AllowAny]
        # Capturar los datos del cuerpo del POST usando request.data
        codigo = request.data.get('Codigo')
        descripcion = request.data.get('Descripcion')

        # Crear una respuesta con los datos capturados
        # data = {'mensaje': f'{codigo} - {descripcion}'}

        data = ResponseData(
            Success = True, # El procesos se ejecuto correctamente
            Status = status.HTTP_200_OK, # Estatus de la peticion
            Message = "Se ha creado Correctamente",  # Mensaje para el cliente
            Record = None # Datos que a regresar al cliente
        )

        return Response(status=status.HTTP_200_OK, data=data)

    # @swagger_auto_schema(request_body=CartegoriaSerializer)

    @swagger_auto_schema(
        method='get',
        manual_parameters=[
            openapi.Parameter(
                'Codigo',
                openapi.IN_QUERY,  # El parámetro será recibido en la URL como query
                description="Código de la categoría",
                type=openapi.TYPE_STRING,
                required=True
            )
        ],
        responses = { 200: CartegoriaSerializer(many=True) }
    )
    @action(methods=['get'], detail=False)
    def GetCategoriaByCodigo(self, request):
        codigo = request.GET.get("Codigo")

        serializer = CartegoriaSerializer(Categoria.objects.filter(Codigo=codigo), many=True)

        data = ResponseData(
            Success=True,  # El procesos se ejecuto correctamente
            Status=status.HTTP_200_OK,  # Estatus de la peticion
            Message="Se ha creado Correctamente",  # Mensaje para el cliente
            Record= serializer.data  # Datos que a regresar al cliente
        )

        return Response(status=status.HTTP_200_OK, data=data.toResponse())

