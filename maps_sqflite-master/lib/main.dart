import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:maps_sqflite/core/app_router.dart';
import 'package:maps_sqflite/featuers/products/presenrtaion/pages/products_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'todos',     
      getPages: AppRouter.appPages,
      initialRoute: AppRouter.products,
     );
  }
}
