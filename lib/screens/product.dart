import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xgrid/model/productModel.dart';
import 'package:xgrid/resources/colors.dart';
import 'package:xgrid/widget/cartItemButton.dart';
import 'package:xgrid/widget/itemInCart.dart';
import 'package:xgrid/widget/text.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  Map catalogdata = {};
  Future<Map> loadData() async {
    var data = await rootBundle.loadString("assets/product.json.json");

    catalogdata = json.decode(data);
    productModel.fromJson(catalogdata);
    return catalogdata;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(data);

    print(catalogdata["cart"]);

    List<IconData> bottomAppBarIcons = [
      Icons.home,
      Icons.category,
      Icons.label_outline,
      Icons.shopping_bag,
      Icons.person
    ];

    List<String> bottomAppBarLabels = [
      "Home",
      "Categories",
      "Brands",
      "Bags",
      "My Account"
    ];
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: List.generate(
            5,
            (index) => BottomNavigationBarItem(
                label: bottomAppBarLabels[index],
                icon: Icon(bottomAppBarIcons[index]))),
        selectedItemColor: Colors.black,
      ),
      backgroundColor: AppColors.white,
      body: SizedBox(
        width: Get.width,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: Get.width * 0.8,
                  margin: EdgeInsets.only(
                    top: Get.height * 0.02,
                    // left: Get.width * 0.1,
                  ),
                  child: Center(
                    child: text(
                      title: 'Shopping Cart',
                      textColor: Colors.black,
                      fontSize: Get.width * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.file_upload_outlined,
                  size: Get.width * 0.09,
                  color: AppColors.purple,
                ),
              ],
            ),
            FutureBuilder(
                future: loadData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ItemsInCart(
                      image: snapshot.data!["data"]["cart"]["products"][0]
                              ["thumb"]
                          .toString(),
                      manufacturuer: snapshot.data!["data"]["cart"]["products"]
                          [0]["manufacturer_name"],
                      productName: snapshot.data!["data"]["cart"]["products"][0]
                          ["name"],
                      newSar: snapshot.data!["data"]["cart"]["products"][0]
                          ["special"][0]["original_price"],
                      oldSar: snapshot.data!["data"]["cart"]["products"][0]
                          ["special"][0]["price_formated"],
                    );
                  } else {
                    return Container();
                  }
                }),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: Get.width * 0.02),
              child: text(
                title: "Recommended Products",
                textColor: Colors.black,
                fontSize: Get.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            FutureBuilder(
                future: loadData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      decoration: BoxDecoration(
                          // color: Colors.purpleAccent.shade100,
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          2,
                          (index) => Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  snapshot.data!["data"]["cart"]["products"][0]
                                      ["thumb"],
                                  width: Get.width * 0.4,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: Get.width * 0.02),
                                  child: text(
                                      title: snapshot.data!["data"]["cart"]
                                          ["products"][0]["name"],
                                      textColor: Colors.black,
                                      fontSize: Get.width * 0.04,
                                      fontWeight: FontWeight.bold),
                                ),
                                text(
                                    title: snapshot.data!["data"]["cart"]
                                        ["products"][0]["manufacturer_name"],
                                    textColor: Colors.black,
                                    fontSize: Get.width * 0.04,
                                    fontWeight: FontWeight.normal),
                                text(
                                    title: snapshot.data!["data"]["cart"]
                                            ["products"][0]["special"][0]
                                        ["price_formated"],
                                    textColor: Colors.red,
                                    fontSize: Get.width * 0.04,
                                    fontWeight: FontWeight.normal),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                }),
            Spacer(),
            SizedBox(
              width: Get.width * 0.8,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: Get.height * 0.02,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
