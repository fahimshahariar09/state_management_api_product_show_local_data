
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_api_product_show/view/screen/product/product_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}
