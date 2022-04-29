import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevmax/Components/ProductImage.dart';
import 'package:kevmax/Components/TextButton.dart';
import 'package:kevmax/Views/DetailPage/DetailCtrl.dart';

class DetailPage extends GetWidget<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201520),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProductImage(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cappuccino",
                          style: GoogleFonts.rosarivo(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () => {
                            controller.isPressed.value =
                                !controller.isPressed.value
                          },
                          icon: Icon(Icons.favorite),
                          color: controller.isPressed.value
                              ? Colors.white
                              : Colors.red,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Drizzled with Caramel",
                          style: GoogleFonts.rosarivo(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            Text(
                              "+5",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup ... Read More",
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Choice of Milk",
                            style: GoogleFonts.rosarivo(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            child: Text(
                              "Oat Milk".toUpperCase(),
                              style: GoogleFonts.rosarivo(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color(0xFFEFE3C8)),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.white)))),
                            onPressed: () => null),
                        TextButton(
                            child: Text(
                              "Soy Milk".toUpperCase(),
                              style: GoogleFonts.rosarivo(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.white)))),
                            onPressed: () => null),
                        TextButton(
                            child: Text(
                              "Almond Milk".toUpperCase(),
                              style: GoogleFonts.rosarivo(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.white)))),
                            onPressed: () => null),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Price",
                              style: GoogleFonts.rosarivo(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "₹249",
                              style: GoogleFonts.rosarivo(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 155,
                        ),
                        Container(
                          width: 250,
                          child: TextButtton(
                            name: "BUY NOW",
                            textStyle: TextStyle(color: Color(0xFF4A2B29)),
                            onpressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color(0xFFEFE3C8)),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                        side: BorderSide(color: Colors.white)))),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    // backgroundColor: Color(0xFF201520),
  }
}
