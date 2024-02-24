import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cartItemQuantityButton extends StatefulWidget {
  final IconData icon;
  const cartItemQuantityButton({super.key, required this.icon});

  @override
  State<cartItemQuantityButton> createState() => _cartItemQuantityButtonState();
}

class _cartItemQuantityButtonState extends State<cartItemQuantityButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width * 0.2,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            side: BorderSide(color: Colors.grey, width: 1.0),
          ),
          onPressed: () {},
          child: Icon(
            widget.icon,
          )),
    );
  }
}
