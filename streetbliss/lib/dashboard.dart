///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';
import 'details.dart';
import 'profil.dart';
import 'cart.dart';
import 'favorite.dart';

class dashboard extends StatelessWidget {
  final pageController = PageController();

  dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
  elevation: 0,
  centerTitle: true,
  automaticallyImplyLeading: false,
  backgroundColor: const Color(0xffffffff),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  ),
  title: const Text(
    "StreetBliss",
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Color(0xff1e295b),
    ),
  ),
  leading: GestureDetector(
    onTap: () {
      // Navigate to Profile page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const profil(), // Update with your ProfilePage
        ),
      );
    },
    child: const Icon(
      Icons.account_circle_outlined,
      color: Color(0xff9e9e9e),
      size: 24,
    ),
  ),
  actions: [
    GestureDetector(
      onTap: () {
        // Navigate to Favorite page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const favorite(), // Update with your FavoritePage
          ),
        );
      },
      child: const Icon(
        Icons.favorite,
        color: Color(0xff9e9e9e),
        size: 24,
      ),
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: GestureDetector(
        onTap: () {
          // Navigate to Cart page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const cart(), // Update with your CartPage
            ),
          );
        },
        child: const Icon(
          Icons.shopping_cart,
          color: Color(0xff9e9e9e),
          size: 24,
        ),
      ),
    ),
  ],
),

body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: TextField(
                controller: TextEditingController(),
                obscureText: false,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xffa7a4a4), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xffa7a4a4), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Color(0xffa7a4a4), width: 1),
                  ),
                  hintText: "Search here",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xffa29f9f),
                  ),
                  filled: true,
                  fillColor: const Color(0xffffffff),
                  isDense: false,
                  contentPadding: const EdgeInsets.all(8),
                  prefixIcon:
                      const Icon(Icons.search, color: Color(0xffa29f9f), size: 24),
                  suffixIcon: const Icon(Icons.photo_camera,
                      color: Color(0xffa29f9f), size: 24),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 150, 0),
              child: Text(
                "Shop By Category",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/men3.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Men",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/women3.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Women",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/5.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "T-Shirt",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/6.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Pants",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/shoes.jpg",
                                    fit: BoxFit.cover),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  "Shoes",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 240,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, position) {
                      return Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "assets/4.webp",
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 0, 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Curated For You",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              height: 250,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0xffffffff), width: 1),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                shrinkWrap: false,
                physics: const ScrollPhysics(),
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    padding: const EdgeInsets.all(0),
                    width: 140,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffefefef),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: const Color(0xffffffff), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:

                              ///***If you have exported images you must have to copy those images in assets/images directory.
                              Image(
                            image: const AssetImage("assets/product1.jpg"),
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Details(),
                              ),
                            );
                          }
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                          child: Text(
                            "T-Shirt",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontStyle: FontStyle.normal,
                              fontSize: 9,
                              color: Color(0xff868f9b),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "Oversized Shirt",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Color(0xff212435),
                                size: 14,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "\$50.00",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    padding: const EdgeInsets.all(0),
                    width: 140,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffefefef),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: const Color(0xffffffff), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:

                              ///***If you have exported images you must have to copy those images in assets/images directory.
                              Image(
                            image: const AssetImage("assets/product2.jpg"),
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Details(),
                              ),
                            );
                          }
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 60, 0),
                          child: Text(
                            "Pants",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontStyle: FontStyle.normal,
                              fontSize: 9,
                              color: Color(0xff868f9b),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                          child: Text(
                            "Cargo Pants",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Color(0xff212435),
                                size: 14,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Text(
                                "\$120.00",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    padding: const EdgeInsets.all(0),
                    width: 140,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffefefef),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: const Color(0xffffffff), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:

                              ///***If you have exported images you must have to copy those images in assets/images directory.
                              Image(
                            image: const AssetImage("assets/product 3.jpg"),
                            height: MediaQuery.of(context).size.height * 0.23,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Details(),
                              ),
                            );
                          }
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                          child: Text(
                            "Men & Women",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 9,
                              color: Color(0xff868f9b),
                            ),
                          ),
                        ),
                        const Text(
                          "Crewneck Unisex",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Color(0xff212435),
                                size: 14,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "\$85.00",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );}
}
