import 'package:app/login.dart';
import 'package:app/my_cart_4.dart';
// import 'package:app/order_detail_6.dart';
// import 'package:app/order_history_7.dart';
import 'package:app/order_profile_5.dart';
import 'package:app/product_add_2.dart';
import 'package:app/product_category_3.dart';
import 'package:app/product_detail_1.dart';
import 'package:app/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Splashscreen(),
    );
  }
}