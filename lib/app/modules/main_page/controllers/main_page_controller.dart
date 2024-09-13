import 'package:get/get.dart';

class MainPageController extends GetxController {
  //TODO: Implement MainPageController

int selectedIndex = 0;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
chageTab(index){
  selectedIndex = index;
  update();
}

}
