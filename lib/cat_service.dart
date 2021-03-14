import 'package:http/http.dart' as http;
import 'dart:convert';

class CatService {
  static Future getBreeds() async {
    var client = http.Client();
    var url = Uri.parse('https://api.thecatapi.com/v1/breeds');
    try {
      var uriResponse = await client.get(url,
          headers: {"x-api-key": "b9d52118-0d4d-41b7-942d-2b67e8229043"});
      print(uriResponse.body);
      return jsonDecode(uriResponse.body);
    } finally {
      client.close();
    }
  }
}
