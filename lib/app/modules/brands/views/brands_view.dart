import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/brands_controller.dart';

class BrandsView extends GetView<BrandsController> {
  const BrandsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
          child: Lottie.asset('assets/loading.json'),
         ),
         Center(
          child: Text("Please check your permission access"),
         )
       ],
     )
    );
  }
}
