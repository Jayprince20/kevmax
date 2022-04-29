import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevmax/Routes/AppRoute.dart';

class ProductCard extends StatelessWidget {
  final String? name;
  final String? priceText;
  final String? image;
  final IconData? icon;
  const ProductCard(
      {Key? key, this.name, this.image, this.icon, this.priceText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 130,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.DETAILPAGE);
        },
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color(0XFFFFFFFF).withOpacity(0.1),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        image!,
                        height: 111,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 68,
                    left: 14,
                    top: 14,
                    child: Container(
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0XFF414141).withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(1.0)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFD3A601),
                            size: 13,
                          ),
                          Text(
                            "+5",
                            style: GoogleFonts.rosarivo(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 5, left: 12),
                child: Text(
                  name!,
                  style: GoogleFonts.rosarivo(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFEFE3C880),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFEFE3C8).withOpacity(0.2),
                ),
                width: 103,
                height: 38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        priceText!,
                        style: GoogleFonts.rosarivo(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFEFE3C880),
                        ),
                      ),
                    ),
                    Chip(
                      padding: EdgeInsets.all(0),
                      backgroundColor: Color(0xFFEFE3C8),
                      label: Container(
                        child: Icon(
                          icon,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
