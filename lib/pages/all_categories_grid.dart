import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/all_categories_list.dart';
import 'package:flutter_application_3/pages/categorey_page.dart';
import 'package:flutter_application_3/utils/jsondata.dart';

class AllCategoriesGrid extends StatelessWidget {
  const AllCategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All categories Grid view"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AllCategoriesList()));
              },
              child: Icon(Icons.list)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.8),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(
                            category: fashionData["categories"][index]),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(fashionData["images"][index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fashionData["names"][index],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
