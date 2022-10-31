import 'package:http/http.dart';
import "dart:convert";

// This is a client that acts as a service to call various APIs
class UsersApiClient {
  dynamic getUsersData() async {
    Uri url = Uri.parse("https://randomuser.me/api/?results=10");
    Response response = await get(url);
    var data = jsonDecode(response.body);
    return data["results"];
  }
}
