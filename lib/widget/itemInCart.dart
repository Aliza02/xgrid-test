import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xgrid/widget/cartItemButton.dart';
import 'package:xgrid/widget/text.dart';

import '../resources/colors.dart';

class ItemsInCart extends StatelessWidget {
  final String image;
  final String manufacturuer;
  final String productName;
  final String oldSar;
  final String newSar;

  const ItemsInCart(
      {super.key,
      required this.image,
      required this.manufacturuer,
      required this.productName,
      required this.oldSar,
      required this.newSar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Image.network(
            // "https://d3e7ardzpaj3y4.cloudfront.net/image/catalog/product/86828033_Dermaroller4in1Kit-500x500.png",
            image,
            height: Get.height * 0.3,
            width: Get.width * 0.4,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
                // top: Get.height * 0.09,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                  // title: 'BH Cosmetics',
                  title: manufacturuer,
                  textColor: AppColors.grey,
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.bold,
                ),

                Row(
                  children: [
                    Container(
                      width: Get.width * 0.5,
                      child: text(
                        // title: "BH Cosmetics Studded Couture Brush",
                        title: productName,
                        textColor: Colors.black,
                        fontSize: Get.width * 0.04,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.delete,
                        size: Get.width * 0.06,
                      ),
                    ),
                  ],
                ),

                text(
                  // title: "Set -12 Piece",
                  title: oldSar,
                  textColor: Colors.black,
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.normal,
                ),

                Text(
                  // "SAR 138",
                  newSar,
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),

                Row(
                  children: [
                    text(
                      title: "SAR 35",
                      textColor: Colors.red,
                      fontSize: Get.width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                    cartItemQuantityButton(icon: Icons.remove),
                    text(
                      title: "1",
                      textColor: Colors.black,
                      fontSize: Get.width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                    cartItemQuantityButton(icon: Icons.add),
                  ],
                ),

                // text(title: "BH Cosmetics", textColor: textColor, fontSize: fontSize)
              ],
            ),
          ),
        )
      ],
    );
  }
}
