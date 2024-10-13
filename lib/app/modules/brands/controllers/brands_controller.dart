import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BrandsController extends GetxController {
  //TODO: Implement BrandsController

  final count = 0.obs;
  final isLoad = true.obs;
  LatLng? local;
  Position? currentPosition;
  @override
  void onInit() {
    _getUserLocation();
   
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

  _getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
// Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }
// Request permission to get the user's location
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return;
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return;
      }
    }
// Get the current location of the user
    currentPosition = await Geolocator.getCurrentPosition();

    local = LatLng(currentPosition!.latitude, currentPosition!.longitude);
   if (local != null) {
     isLoad.value = false;
   }
  }
}
