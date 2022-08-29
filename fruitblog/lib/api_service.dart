import 'dart:convert';
import 'package:fruitblog/config.dart';
import 'package:fruitblog/models/publication_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  static var client = http.Client();

  static Future<List<PublicationModel>?> getPublications() async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};

    var url = Uri.http(Config.apiURL, Config.blogURL);
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
    bool isEditMode,
  ) async {
    var blogURL = Config.blogURL;
    if (isEditMode) {
      blogURL = blogURL + "/" + model.id.toString();
    }
    var url = Uri.http(Config.apiURL, Config.blogURL);
    var requestMethod = isEditMode ? "PUT" : "POST";
    var request = http.MultipartRequest(requestMethod, url);
    request.fields["name"] = model.name!;
    request.fields["publication"] = model.publication!;

    var response = await request.send();
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> deletePublication(id) async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};
    var url = Uri.http(Config.apiURL, Config.blogURL + "/" + id);
    var response = await client.delete(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
