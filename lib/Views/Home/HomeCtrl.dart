import 'package:get/get.dart';

class HomeController extends GetxController {
  var bottomNavIndex = 0.obs;
  //bottomNav function//
  void onItemTapped(int index) {
    bottomNavIndex.value = index;
  }

  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onReady() {
    super.onReady();
  }

// // method to fetch coffees//
//   void fetchCoffees() async {
//     try {
//       isLoading(true);
//       var coffee = await HttpService.fetchCoffee();
//       productList.value = coffee.data!;
//       print(coffee.data);
//     } finally {
//       isLoading(false);
//     }
//   }
}
