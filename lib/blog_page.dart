import 'package:blog_navigation/custom_widget/post_widget.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({Key? key}) : super(key: key);

  final blogPosts = [
    getBlogPost(
        imageName: 's.png', title: 'برای 14 آبان SafeMoon : سیگنال خرید'),
    getBlogPost(imageName: 'c.png', title: 'برای 14 آبان Cosmos : سیگنال خرید'),
    getBlogPost(imageName: 'r.png', title: 'برای 14 آبان Ripple : سیگنال خرید'),
    getBlogPost(
        imageName: 'a.png', title: 'برای 14 آبان Alchemy Pay : سیگنال خرید'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'VIP اخبار و سیگنال های ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...blogPosts,
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
