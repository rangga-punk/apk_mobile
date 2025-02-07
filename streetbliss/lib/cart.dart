import 'package:clothes/transaksi.dart';
import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  const cart({super.key});
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
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: Color(0xff000000),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child:const Icon(
          Icons.arrow_back,
          color: Color(0xff212435),
          size: 24,
        ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                _buildCartItem(
                  context,
                  "Oversized Shirt",
                  "M,black",
                  "assets/product1.jpg",
                  "\$50.00",
                ),
                const SizedBox(height: 10),
                _buildCartItem(
                  context,
                  "Cargo Pants",
                  "S, Khaky",
                  "assets/product2.jpg",
                  "\$120.00",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const transaksi()),
                );
              },
              color: const Color(0xff1e295b),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(16),
              textColor: const Color(0xffffffff),
              height: 45,
              minWidth: double.infinity,
              child: Text(
                "\$170.00",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartItem(BuildContext context, String title, String size, String imagePath, String price) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: const Color(0x66efefef), width: 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image(
              image: AssetImage(imagePath),
              width: MediaQuery.of(context).size.width * 0.25,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 4),
                Chip(
                  labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                  label: Text(
                    size,
                    style: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                  backgroundColor: const Color(0xb2f0efef),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    Icon(Icons.remove, color: Color(0xff212435), size: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Icon(Icons.add, color: Color(0xff212435), size: 16),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Chip(
              labelPadding: const EdgeInsets.symmetric(horizontal: 8),
              label: Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
              backgroundColor: const Color(0xff1e295b),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
