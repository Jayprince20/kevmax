import 'package:get/get.dart';
import 'package:kevmax/Models1/CofeeModel.dart';

class DetailController extends GetxController {
  final isPressed = false.obs;
  final idCoffee = ''.obs;
  final descCoffee = ''.obs;
  final titreCoffee = ''.obs;
  final cofeeList = <Datums>[].obs;
  void onInit() {
    //descCoffee.value = Get.arguments["description"];
    //titreCoffee.value = Get.arguments["title"];
    //idCoffee.value = Get.arguments["id"];
    super.onInit();
  }

  @override
  void onReady() {
    print(Get.arguments["id"]);
    descCoffee.value = Get.arguments["description"];
    titreCoffee.value = Get.arguments["title"];
    idCoffee.value = Get.arguments["id"];
    super.onReady();
  }
}
