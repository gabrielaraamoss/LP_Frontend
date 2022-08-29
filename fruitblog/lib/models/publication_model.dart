List<PublicationModel> publicationsFromJson(dynamic str) =>
    List<PublicationModel>.from((str).map((x) => PublicationModel.fromJson(x)));

class PublicationModel {
  late String? id;
  late String? name;
  late String? publication;

  PublicationModel({this.id, this.name, this.publication});

  PublicationModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    publication = json["publication"];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["publication"] = publication;

    return _data;
  }
}
