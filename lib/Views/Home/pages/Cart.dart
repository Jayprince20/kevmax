import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevmax/Components/dotted.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201520),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Card",
                maxLines: 1,
                style: GoogleFonts.rosarivo(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF),
                  height: 1,
                ),
              ),
            ),
            CardProduct(),
            SizedBox(
              height: 10,
            ),
            CardProduct(),
            SizedBox(
              height: 10,
            ),
            CardProduct(),
            SizedBox(
              height: 20,
            ),
            MySeparator(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFEFE3C8).withOpacity(0.2),
          ),
          width: 385,
          height: 108,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/coffee.png",
                    height: 111,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cappuccino",
                    style: GoogleFonts.rosarivo(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFEFE3C880),
                    ),
                  ),
                  Text(
                    "Dalgona Macha",
                    style: GoogleFonts.rosarivo(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    "₹299",
                    style: GoogleFonts.rosarivo(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFEFE3C880),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFEFE3C8).withOpacity(0.2),
                ),
                width: 118,
                height: 37,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      padding: EdgeInsets.all(0),
                      backgroundColor: Color(0xFFEFE3C8),
                      label: Container(
                        child: Icon(
                          Icons.remove,
                          size: 25,
                          color: Color(0XFF1C161E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "1",
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
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
