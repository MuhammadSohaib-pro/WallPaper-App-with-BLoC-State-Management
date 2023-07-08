import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_blaster/helper/urls.dart';

class ApiBaseHelper {
  final String baseUrl = Urls.baseURL;

  Future<dynamic> getMethod({required String url}) async {
    Map<String, String> header = {
      'Authorization': Urls.apiKey,
      'Content-Type': 'application/json'
    };

    try {
      Uri urlValue = Uri.parse(baseUrl + url);
      print(urlValue);
      http.Response response = await http
          .get(urlValue, headers: header)
          .timeout(const Duration(seconds: 15));

      Map<String, dynamic> parsedJSON = jsonDecode(response.body);
      print(
          '*********************** Response **********************************');
      print(urlValue.toString());
      print(parsedJSON);
      print('&&&&&&&&&&&&&&&&&&&&&&& End of Response &&&&&&&&&&&&&&&&&&&&&&\n');
      return parsedJSON;
    } catch (e) {}
  }
}
