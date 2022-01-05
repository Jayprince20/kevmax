import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kevmax/Routes/AppRoute.dart';
import 'package:kevmax/Routes/PageRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Coffee',
      theme: ThemeData(
        primaryColor: Color(0xffff0000),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.HOMEPAGE,
      getPages: AppPages.pages,
    );
  }
}
