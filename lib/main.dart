import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    
    GetMaterialApp(
      
      title: "SENd",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: "NotoSansThai",
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
