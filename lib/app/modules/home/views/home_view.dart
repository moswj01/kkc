import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:send/app/modules/brands/views/brands_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height / 4,
                child: Image.asset("assets/banner.png"),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 20, right: 20, top: size.height / 5.5),
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.29),
                        offset: Offset(0, 1),
                        blurRadius: 20,
                        spreadRadius: 4,
                      ),
                    ],
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "ค้นหาร้าน",
                      prefixIcon: Image.asset('assets/search.png'),
                      suffixIcon: Image.asset('assets/qr_scan.png')),
                ),
              ),
            ],
          ),
          Container(
            child: InkWell(
              onTap: () => Get.to(() =>BrandsView()),
              child: Image.asset('assets/sevice1.png'),
            ),
          ),
          Container(
            width: size.width,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.29),
                        offset: Offset(0, 1),
                        blurRadius: 20,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: size.width / 6.5,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFB602).withOpacity(0.19),
                            borderRadius: BorderRadius.circular(200)),
                        child: Image.asset(
                          'assets/ic_car.png',
                          width: 30,
                        ),
                      ),
                      Container(
                          child: Column(
                        children: [
                          Text(
                            "สะดวกรับ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "บริการ รับ-ส่ง\n ผู้โดยสาร",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffA3A3A3),
                            ),
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          )
                        ],
                      )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.29),
                        offset: Offset(0, 1),
                        blurRadius: 20,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width / 6.4,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFB602).withOpacity(0.19),
                            borderRadius: BorderRadius.circular(200)),
                        child: Image.asset(
                          'assets/ic_box.png',
                          width: 30,
                        ),
                      ),
                      Container(
                          child: Column(
                        children: [
                          Text(
                            "สะดวกส่ง",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "บริการ รับ-ส่ง\nพัสดุ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffA3A3A3),
                            ),
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          )
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(top: 35, left: 20),
            child: Text(
              "โปรโมชัน",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: size.width,
            height: size.height/5,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage('assets/banner.png'),fit: BoxFit.fill)
            ),
          ),
        ],
      ),
    );
  }
}
