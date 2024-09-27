import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:SENd/app/modules/chat/views/chat_view.dart';
import 'package:SENd/app/modules/home/views/home_view.dart';
import 'package:SENd/app/modules/order_list/views/order_list_view.dart';
import 'package:SENd/app/modules/profile/views/profile_view.dart';
import 'package:SENd/app/modules/wallet/views/wallet_view.dart';

import '../controllers/main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  MainPageView({super.key});
  final mainPageController = Get.put(MainPageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(builder: (mainPageController) {
      return Scaffold(
        body: IndexedStack(
          index: mainPageController.selectedIndex,
          children: [
            HomeView(),
            OrderListView(),
            WalletView(),
            ChatView(),
            ProfileView()
          ],
        ),
        bottomNavigationBar: Container(
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.09),
                  offset: Offset(0, 1),
                  blurRadius: 20,
                  spreadRadius: 4,
                ),
              ]),
          child: NavigationBar(
              height: 60,
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
              overlayColor:
                  WidgetStatePropertyAll(Color.fromARGB(132, 255, 0, 0)),
              selectedIndex: mainPageController.selectedIndex,
              indicatorColor: Color(0xFFFFAEAE),
              animationDuration: Duration(seconds: 2),
              onDestinationSelected: mainPageController.chageTab,
              destinations: [
                NavigationDestination(
                    icon: Icon(HugeIcons.strokeRoundedHome01),
                    label: "หน้าหลัก"),
                NavigationDestination(
                    icon: Icon(HugeIcons.strokeRoundedCheckList),
                    label: "รายการ"),
                NavigationDestination(
                    icon: Icon(HugeIcons.strokeRoundedWallet01),
                    label: "กระเป๋า"),
                NavigationDestination(
                    icon: Icon(HugeIcons.strokeRoundedBubbleChat),
                    label: "ข้อความ"),
                NavigationDestination(
                    icon: Icon(HugeIcons.strokeRoundedUserAccount),
                    label: "ผู้ใช้"),
              ]),
        ),
      );
    });
  }
}
