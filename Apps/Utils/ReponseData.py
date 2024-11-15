import json

class ResponseData:
    pass

    def __init__(self, Success, Status, Message, Record = None):
        self.Success = Success
        self.Status = Status
        self.Message = Message
        self.Record = Record

    def toResponse(self):
        # Convertir los atributos de la instancia en un diccionario
        return self.__dict__

    # def to_json(self):
    #     # Convierte los atributos de la instancia en un diccionario y luego a JSON
    #     return json.dumps(self.__dict__, ensure_ascii=False)