import 'dart:convert';
import 'package:fruitblog/config.dart';
import 'package:fruitblog/models/publication_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  static var client = http.Client();

  static Future<List<PublicationModel>?> getPublications() async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};

    var url = Uri.parse('http://localhost:8000/get');
    var response = await client.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return publicationsFromJson(data["data"]);
    } else {
      return null;
    }
  }

  static Future<bool> savePublications(
    PublicationModel model,
  ) async {
    var blogURL = Config.blogURL;
    var url = Uri.parse('http://localhost:8000/post');
    var request = http.MultipartRequest("POST", url);
    request.fields["nombre"] = model.nombre!;
    request.fields["publicacion"] = model.publicacion!;
    var response = await request.send();
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> deletePublication(id) async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};
    var url = Uri.parse('http://localhost:8000/delete-posts');
    var response = await client.delete(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
