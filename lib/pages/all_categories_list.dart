import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/all_categories_grid.dart';
import 'package:flutter_application_3/pages/categorey_page.dart';
import 'package:flutter_application_3/utils/jsondata.dart';
import 'package:flutter_application_3/utils/util.dart';

class AllCategoriesList extends StatelessWidget {
  const AllCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: purple,
        ),
        centerTitle: true,
        title: Text(
          'All Categories',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'EduTASBeginner',
            color: purple,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AllCategoriesGrid()));
            },
            icon: Icon(Icons.menu),
            color: purple,
          ),
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CategoryPage(
                                category: fashionData["categories"][index]),
                          ),
                        );
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
