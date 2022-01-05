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
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white.withOpacity(0.1),
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name!,
                    style: GoogleFonts.rosarivo(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFEFE3C880),
                    ),
                    overflow: TextOverflow.ellipsis),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFEFE3C8).withOpacity(0.2),
                ),
                width: 103,
                height: 50,
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
