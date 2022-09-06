List<PublicationModel> publicationsFromJson(dynamic str) =>
    List<PublicationModel>.from((str).map((x) => PublicationModel.fromJson(x)));

class PublicationModel {
  late String? nombre;
  late String? fecha;
  late String? publicacion;

  PublicationModel({this.nombre, this.fecha, this.publicacion});

  PublicationModel.fromJson(Map<String, dynamic> json) {
    nombre = json["nombre"];
    fecha = json["fecha"];
    publicacion = json["publicacion"];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["nombre"] = nombre;
    _data["fecha"] = fecha;
    _data["publicacion"] = publicacion;

    return _data;
  }
}
