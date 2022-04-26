import 'package:blog_navigation/blog_page.dart';
import 'package:flutter/material.dart';

import 'password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

//Navgate Page Function
  void navigateToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  ' VIP ورود به حساب سیگنال ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                    side: BorderSide(color: Colors.black, width: 2.0),
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    navigateToPage(context, BlogScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200.0, 43.0),
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateToPage(context, PasswordRecovery());
                  },
                  style: TextButton.styleFrom(primary: Colors.blue),
                  child: Text(
                    'فراموشی رمزعبور',
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
