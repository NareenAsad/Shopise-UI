// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String image;
  String price;
  String title;
  String detail;
  DetailPage({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            image,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text("Rs: $price"),
                const Text(
                  "Deatils: ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
                Text(detail)
              ],
            ),
          )
        ],
      ),
    );
  }
}
