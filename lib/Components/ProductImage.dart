
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kevmax/Routes/AppRoute.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: CachedNetworkImage(
              imageUrl:
                  "https://promithemen.com/wp-content/uploads/2020/09/Coffee-National-Coffee-Day-FT-Blog0919.jpg",
              imageBuilder: (context, imageProvider) => InkWell(
                onTap: () {},
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              errorWidget: (context, url, error) => Center(
                child: InkWell(
                  onTap: () {
                    // Get.toNamed(
                    //     AppRoutes.LOGEMENTDETAILS);
                  },
                  child: Icon(
                    Icons.error,
                    size: 100,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.black26,
                    spreadRadius: 5)
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.HOMEPAGE);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.6),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
