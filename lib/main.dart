import 'package:flutter/material.dart';
import 'package:getx/views/shopping_page.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: ShoppingPage(),
    );
  }
}
