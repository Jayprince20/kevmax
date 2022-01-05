import 'package:get/get.dart';
import 'package:kevmax/Views/DetailPage/DetailCtrl.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
