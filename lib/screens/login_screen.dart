import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/login_background.jpg'),
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'FRENDZ',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 15.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    hintText: "UserName",
                    fillColor: Colors.white,
                    filled: true,
                    icon: Icon(Icons.account_box)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    icon: Icon(Icons.lock)),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: 220.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                    child: Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
