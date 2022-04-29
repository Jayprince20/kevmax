import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevmax/Components/ProductCard.dart';
import 'package:kevmax/Components/VerticalCategoryList.dart';
import 'package:kevmax/Views/Home/HomeCtrl.dart';

class Home extends GetWidget<HomeController> {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201520),
        body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //// Head page /////
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "déja",
                            maxLines: 1,
                            style: GoogleFonts.rosarivo(
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFEFE3C880).withOpacity(0.5),
                              height: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Brew",
                              maxLines: 1,
                              style: GoogleFonts.rosarivo(
                                height: 0.5,
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFEFE3C8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "assets/avatar.jpg",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                ///// Search bar///////
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintText: "Browse your favorite coffee",
                      hintStyle: GoogleFonts.rosarivo(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFEFE3C8).withOpacity(0.5),
                      ),
                      fillColor: Color(0xFF171017),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFFEFE3C8).withOpacity(0.5),
                      ),
                    ),
                  ),
                ),

                // // Vertical coffee category /////
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 45,
                      height: 950,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF704341).withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                        ),
                        child: VerticalCoffeeCategories(),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 250, left: 20),
                        child: SizedBox(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ProductCard(
                                    name: "Cinnamon & Cocoa",
                                    image: "assets/coffee.png",
                                    icon: Icons.add,
                                    priceText: "₹249",
                                  ),
                                  ProductCard(
                                    name: "Cinnamon & Cocoa",
                                    image: "assets/coffee.png",
                                    icon: Icons.add,
                                    priceText: "₹249",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ProductCard(
                                    name: "Cinnamon & Cocoa",
                                    image: "assets/coffee.png",
                                    icon: Icons.add,
                                    priceText: "₹249",
                                  ),
                                  ProductCard(
                                    name: "Cinnamon & Cocoa",
                                    image: "assets/coffee.png",
                                    icon: Icons.add,
                                    priceText: "₹249",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ProductCard(
                                    name: "Cinnamon & Cocoa",
                                    image: "assets/coffee.png",
                                    icon: Icons.add,
                                    priceText: "₹249",
                                  ),
                                  ProductCard(
                                    name: "Cinnamon & Cocoa",
                                    image: "assets/coffee.png",
                                    icon: Icons.add,
                                    priceText: "₹249",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
