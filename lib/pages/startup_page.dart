import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/login_page.dart';
import 'package:flutter_application_3/utils/util.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Shopsie",
              style: TextStyle(
                fontSize: 62,
                fontFamily: 'EduTASBegineer',
                fontWeight: FontWeight.w500,
                color: purple,
              ),
            ),
            vspace,
            Text(
              "The best way to style your life.",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Agbalumo',
                color: grey,
              ),
            ),
            SizedBox(height: 160),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(purple),
                foregroundColor: MaterialStateProperty.all(white),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 70, vertical: 17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
