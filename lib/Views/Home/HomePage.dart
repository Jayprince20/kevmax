import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kevmax/Views/Home/HomeCtrl.dart';
import 'package:kevmax/Views/Home/pages/Cart.dart';
import 'package:kevmax/Views/Home/pages/Favorite.dart';
import 'package:kevmax/Views/Home/pages/Home.dart';
import 'package:kevmax/Views/Home/pages/Notification.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: controller.bottomNavIndex,
        children: [
          Home(),
          Cart(),
          Favorite(),
          Notifications(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFEFE3C8),
        backgroundColor: Color(0xFF22151F),
        onTap: controller.onItemTapped,
        currentIndex: controller.bottomNavIndex,
        iconSize: 42,
        selectedFontSize: 14,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
