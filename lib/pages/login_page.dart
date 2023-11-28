import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home_page.dart';
import 'package:flutter_application_3/pages/register_page.dart';
import 'package:flutter_application_3/utils/util.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome back! Glad to",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            Text(
              "see you again!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            vspace,
            vspace,
            Container(
              width: 266,
              color: lgrey,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Enter your email",
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            vspace,
            vspace,
            Container(
              width: 266,
              color: lgrey,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Enter your password:",
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
            ),
            vspace,
            vspace,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child:
                  Text("Login", style: TextStyle(fontSize: 18, color: white)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(purple),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 100, vertical: 17)),
              ),
            ),
            vspace,
            vspace,
            Text(
              "--- Or login with ---",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Facebook",
                    style: TextStyle(color: black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(lgrey),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Google",
                    style: TextStyle(color: black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(lgrey),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  ),
                ),
              ],
            ),
            vspace,
            vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: black,
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      fontSize: 14,
                      color: black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(white),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
