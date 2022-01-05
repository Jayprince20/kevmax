import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kevmax/Components/ProductCard.dart';
import 'package:kevmax/Components/VerticalCategoryList.dart';
import 'package:kevmax/Models1/CofeeModel.dart';
import 'package:kevmax/Views/Home/HomeCtrl.dart';

class Home extends GetWidget<HomeController> {
  final CoffeeModel? product;
  const Home({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.isLoading.value
        ? Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          )
        : SafeArea(
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
                              radius: 20,
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
                              color: Color(0xFFEFE3C880).withOpacity(0.2),
                            ),
                            fillColor: Color(0xFF171017),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFFEFE3C880).withOpacity(0.2),
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
                            height: 450,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF7043414D),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                ),
                              ),
                              child: VerticalCoffeeCategories(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 50, bottom: 250, left: 20),
                            child: SizedBox(
                              child: ProductCard(name: "Cinnamon & Cocoa",image: "assets/coffee.png",icon: Icons.add, priceText: "₹249",),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 50, bottom: 250, left: 15),
                            child: SizedBox(
                              child: ProductCard(name: "Drizzled with Caramel",image: "assets/coffee.png",icon: Icons.add, priceText: "₹199",),
                            ),
                          ),

                          // Network grid view
                          // Container(
                          //   child: SizedBox(
                          //     width: 45,
                          //     height: 40,
                          //     child: Container(
                          //       child: GridView.builder(
                          //           shrinkWrap: true,
                          //           physics: BouncingScrollPhysics(),
                          //           gridDelegate:
                          //               SliverGridDelegateWithMaxCrossAxisExtent(
                          //                   maxCrossAxisExtent: 20,
                          //                   crossAxisSpacing: 3,
                          //                   mainAxisSpacing: 3),
                          //           itemCount: controller.productList.length,
                          //           itemBuilder: (context, index) {
                          //             return Card(
                          //               color: Colors.grey.withOpacity(0.4),
                          //               elevation: 8,
                          //               child: Container(
                          //                 padding: EdgeInsets.all(3),
                          //                 child: Column(
                          //                   mainAxisAlignment:
                          //                       MainAxisAlignment.center,
                          //                   crossAxisAlignment:
                          //                       CrossAxisAlignment.start,
                          //                   children: [
                          //                     CachedNetworkImage(
                          //                       imageUrl: controller
                          //                           .productList[index]
                          //                           .imageUrl!,
                          //                       imageBuilder:
                          //                           (context, imageProvider) =>
                          //                               InkWell(
                          //                         onTap: () {
                          //                           Get.toNamed(
                          //                               AppRoutes.DETAILPAGE,
                          //                               arguments: {
                          //                                 controller
                          //                                     .productList[
                          //                                         index]
                          //                                     .title,
                          //                                 controller
                          //                                     .productList[
                          //                                         index]
                          //                                     .id,
                          //                                 controller
                          //                                     .productList[
                          //                                         index]
                          //                                     .description
                          //                               });
                          //                         },
                          //                         child: Container(
                          //                           width: double.infinity,
                          //                           height: 100,
                          //                           decoration: BoxDecoration(
                          //                             borderRadius:
                          //                                 BorderRadius.circular(
                          //                                     5),
                          //                             image: DecorationImage(
                          //                               image: imageProvider,
                          //                               fit: BoxFit.cover,
                          //                             ),
                          //                           ),
                          //                         ),
                          //                       ),
                          //                       placeholder: (context, url) =>
                          //                           Center(
                          //                         child:
                          //                             CircularProgressIndicator(
                          //                           color: Theme.of(context)
                          //                               .primaryColor,
                          //                         ),
                          //                       ),
                          //                       errorWidget:
                          //                           (context, url, error) =>
                          //                               Center(
                          //                         child: InkWell(
                          //                           onTap: () {
                          //                             Get.toNamed(
                          //                               AppRoutes.DETAILPAGE,
                          //                             );
                          //                           },
                          //                           child: Icon(
                          //                             Icons.error,
                          //                             size: 100,
                          //                           ),
                          //                         ),
                          //                       ),
                          //                     ),
                          //                     SizedBox(
                          //                       height: 8,
                          //                     ),
                          //                     Row(
                          //                       mainAxisAlignment:
                          //                           MainAxisAlignment
                          //                               .spaceBetween,
                          //                       children: [
                          //                         Column(
                          //                           mainAxisAlignment:
                          //                               MainAxisAlignment.start,
                          //                           crossAxisAlignment:
                          //                               CrossAxisAlignment
                          //                                   .start,
                          //                           children: [
                          //                             Container(
                          //                               width: 100,
                          //                               child: Text(
                          //                                 '${controller.productList[index].title}',
                          //                                 style: TextStyle(
                          //                                     fontSize: 16,
                          //                                     fontWeight:
                          //                                         FontWeight
                          //                                             .w500),
                          //                                 softWrap: true,
                          //                                 maxLines: 1,
                          //                                 overflow:
                          //                                     TextOverflow.clip,
                          //                               ),
                          //                             ),
                          //                             SizedBox(
                          //                               height: 8,
                          //                             ),
                          //                             Text(
                          //                               '${controller.productList[index].price} FCFA',
                          //                               style: TextStyle(
                          //                                   fontSize: 12,
                          //                                   color: Colors.red,
                          //                                   fontWeight:
                          //                                       FontWeight
                          //                                           .bold),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                       ],
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //             );
                          //           }),
                          // ),
                          // ),
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ));
  }
}
