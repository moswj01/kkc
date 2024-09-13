import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFFF9090),
              borderRadius: BorderRadius.circular(8)
            ),
            child: HugeIcon(icon: HugeIcons.strokeRoundedLockSync01, color: Color(0xffffffff),size: 50,),
          ),
          Container(

            padding: EdgeInsets.only(top:40,left: 50,right: 50),
            child: Text("เข้าสู้ระบบด้วย Account ของคุณเพื่อให้สามารถเข้าถึงการทำงานนี้ได้",textAlign: TextAlign.center, style: TextStyle(letterSpacing: 0.5,fontSize: 16),))
        ],
      ),
     ),
    );
  }
}
