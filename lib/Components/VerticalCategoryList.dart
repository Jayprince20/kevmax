import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevmax/Components/global.dart';

class VerticalCoffeeCategories extends StatefulWidget {
  const VerticalCoffeeCategories({
    Key? key,
  }) : super(key: key);

  @override
  _VerticalCoffeeCategoriesState createState() =>
      _VerticalCoffeeCategoriesState();
}

class _VerticalCoffeeCategoriesState extends State<VerticalCoffeeCategories> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: coffeeCategories.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          setState(() {
            _active = i;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 9),
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "${coffeeCategories[i]}",
                  style: GoogleFonts.rosarivo(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: _active == i
                        ? Color(0xFFEFE3C8)
                        : Color(0xFFEFE3C880).withOpacity(0.3),
                  ),
                ),
              ),
            ),
            if (_active == i)
              SizedBox(
                width: 3,
              ),
            if (_active == i)
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
      ),
    );
  }
}
