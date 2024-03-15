import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String urlString;

  NetworkHelper(this.urlString);

  Future getData() async {
    Uri url = Uri.parse(urlString); // Convert the String to a Uri
    http.Response response = await http.get(url); // Now passing Uri to http.get

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
      // It's generally a good idea to handle errors more gracefully.
      // This could include throwing an exception or returning an error code,
      // depending on how you want your app to respond to failure.
      return null;
    }
  }
}
