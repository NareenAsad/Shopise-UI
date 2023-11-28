import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/custom_widget.dart';
import 'package:flutter_application_3/utils/util.dart';

class CategoryPage extends StatelessWidget {
  Map<String, dynamic> category;

  CategoryPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = category["products"];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            category["name"],
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'FjallaOne',
                color: purple),
          ),
        ),
        body: Center(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return CategoryContainer(
                        title: products[index]["name"],
                        image: products[index]["imageUrl"],
                        price: products[index]["price"].toString(),
                        details: products[index]["description"]);
                  })),
        ));
  }
}
