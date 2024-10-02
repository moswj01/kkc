import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../controllers/brands_controller.dart';

class BrandsView extends GetView<BrandsController> {
  const BrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    final brandController = Get.put(BrandsController());
    Size size = MediaQuery.of(context).size;
    final Completer<GoogleMapController> _controller =
        Completer<GoogleMapController>();

    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        GoogleMap(
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: LatLng(brandController.currentPosition!.latitude,
                brandController.currentPosition!.longitude),
            zoom: 18,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            controller.animateCamera(CameraUpdate.newCameraPosition(
                CameraPosition(
                  zoom: 19,
                    target: LatLng(brandController.currentPosition!.latitude,
                        brandController.currentPosition!.longitude))));
          },
          markers: {
            Marker(
                markerId: MarkerId("myLocation"),
                position: LatLng(brandController.currentPosition!.latitude,
                    brandController.currentPosition!.longitude))
          },
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: size.width,
          height: size.height * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(50, 50, 105, 0.15),
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(
                    0,
                    2,
                  ),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  blurRadius: 1,
                  spreadRadius: 0,
                  offset: Offset(
                    0,
                    1,
                  ),
                ),
              ]),
          child: Column(
            children: [
              Container(
                width: size.width,
                child: Text(
                  "เลือกร้านค้า",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  scrollDirection: Axis.vertical,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/otteri.png'),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/express.png'),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/laundry.png'),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/kireii.png'),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/24.png'),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
