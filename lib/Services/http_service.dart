import 'package:http/http.dart' as http;
import 'package:kevmax/Models1/CofeeModel.dart';

class HttpService {
  // static var client = http.Client();
  static Future<CoffeeModel> fetchCoffee() async {
    var response = await http.get(Uri.parse(
        "https://3f47-154-72-167-98.ngrok.io/api/v1/coffees?page=1&per_page=20&order=desc"));
    if (response.statusCode == 200) {
      var data = response.body;
      return coffeeModelFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return coffeeModelFromJson(data);
    }
  }
}
