import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/all_categories_grid.dart';
import 'package:flutter_application_3/pages/categorey_page.dart';
import 'package:flutter_application_3/utils/jsondata.dart';

class AllCategoriesList extends StatelessWidget {
  const AllCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All categories list view"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AllCategoriesGrid()));
              },
              child: Icon(Icons.grid_on_sharp)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: fashionData["categories"].length,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CategoryPage(
                                category: fashionData["categories"][index])));
                      },
                      leading: Image.asset(
                        fashionData["images"][index],
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        fashionData["names"][index],
                      ),
                      subtitle: Text("descriptions will be shown here"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
