import 'package:get/get.dart';
import 'package:kevmax/Routes/AppRoute.dart';
import 'package:kevmax/Views/DetailPage/DetailBinding.dart';
import 'package:kevmax/Views/DetailPage/DetailPage.dart';
import 'package:kevmax/Views/Home/HomeBinding.dart';
import 'package:kevmax/Views/Home/HomePage.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.HOMEPAGE,
        page: () => HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.DETAILPAGE,
        page: () => DetailPage(),
        binding: DetailBinding()),
  ];
}
