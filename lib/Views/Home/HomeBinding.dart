import 'package:get/get.dart';
import 'package:kevmax/Views/Home/HomeCtrl.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
