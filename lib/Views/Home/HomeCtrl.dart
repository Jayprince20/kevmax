import 'package:get/get.dart';
import 'package:kevmax/Services/http_service.dart';

class HomeController extends GetxController {
  var bottomNavIndex = 0;
  //bottomNav function//
  void onItemTapped(int index) {
    bottomNavIndex = index;
  }

  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    fetchCoffees();
    super.onInit();
  }

  void onReady() {
    fetchCoffees();
    super.onReady();
  }

// method to fetch coffees//
  void fetchCoffees() async {
    try {
      isLoading(true);
      var coffee = await HttpService.fetchCoffee();
      productList.value = coffee.data!;
      print(coffee.data);
    } finally {
      isLoading(false);
    }
  }
}
