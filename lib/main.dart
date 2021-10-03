import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_admin/screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotel Admin',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: RegisterScreen());
  }
}
