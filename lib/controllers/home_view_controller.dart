import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:laundryapp/model/all_services.dart';
import 'package:laundryapp/model/all_shops.dart';
import 'package:laundryapp/model/popular_shops.dart';
import 'package:laundryapp/model/promotion.dart';
import 'package:laundryapp/services/base_client.dart';
import 'package:laundryapp/services/controller/base_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeViewController extends GetxController with BaseController {
  late final AllServices allServicesResponse;
  RxList serviceList = [].obs;

  List<ServicesListModel> get serviceItemList {
    return [...serviceList];
  }

  late final AllShops allShops;
  RxList shopsList = [].obs;

  List<ShopsList> get shopList {
    return [...shopsList];
  }

  late final PopularShops popularShops;
  RxList popularList = [].obs;

  List<PopularShopsList> get popularShop {
    return [...popularList];
  }

  late final Promotions promotions;
  RxList promotionList = [].obs;

  List<OffersList> get offers {
    return [...promotionList];
  }

  RxString lat = "".obs;
  RxString long = "".obs;
  RxString addressLine = "".obs;

  @override
  void onInit() {
    getPermission();
    super.onInit();
  }

  Future getAllData() async {
    getAllOffers();
    getAllServices();
    getAllShops();
    getPopularShops();
  }

  getPermission() async {
    var status = await Permission.location.status;
    if (status.isGranted) {
      getCurrentLocation();
    } else {
      await Permission.location.request().then((value) => getCurrentLocation());
    }
  }

  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    lat = position.latitude.toString().obs;
    long = position.longitude.toString().obs;
    print('Latitude:$lat Longitude:$long');
    getAddressFromCoordinates(position.latitude, position.longitude);
  }

  getAddressFromCoordinates(dynamic lat, long) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    addressLine =
        '${placemarks[0].locality} | ${placemarks[0].subAdministrativeArea}.'
            .obs;
    print('Address: ${addressLine.value}');
    getAllData();
    update();
  }

  Future getAllOffers() async {
    showLoading('Loading offers...');
    var response = await BaseClient().get('/offers').catchError(handleError);
    if (response != null) {
      hideLoading();
      promotions = Promotions.fromJson(jsonDecode(response));
      if (promotions.success!) {
        promotionList.addAll(promotions.data!.toList());
      }
    } else {
      hideLoading();
      print("Error");
      Get.snackbar("Error", "Please Try Again!",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void getAllServices() async {
    showLoading('Loading Services...');
    var response = await BaseClient().get('/services').catchError(handleError);
    if (response != null) {
      hideLoading();
      allServicesResponse = AllServices.fromJson(jsonDecode(response));
      if (allServicesResponse.success!) {
        serviceList.addAll(allServicesResponse.data!.toList());
      }
    } else {
      hideLoading();
      print("Error");
      Get.snackbar("Error", "Please Try Again!",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void getAllShops() async {
    showLoading('Getting All Shops...');
    Map body = {'latitude': "22.3039", 'longitude': "70.8022"};
    var response =
        await BaseClient().post('/all_shops', body).catchError(handleError);
    if (response != null) {
      hideLoading();
      allShops = AllShops.fromJson(jsonDecode(response));
      if (allShops.success!) {
        shopsList.addAll(allShops.data!.toList());
      }
    } else {
      hideLoading();
      print("Error");
      Get.snackbar("Error", "Something went wrong!",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void getPopularShops() async {
    showLoading('Getting Popular Shops...');
    Map body = {'latitude': "22.3039", 'longitude': "70.8022"};
    var response =
        await BaseClient().post('/popular_shops', body).catchError(handleError);
    if (response != null) {
      hideLoading();
      popularShops = PopularShops.fromJson(jsonDecode(response));
      if (popularShops.success!) {
        popularList.addAll(popularShops.data!.toList());
      }
      for (PopularShopsList shopsList in popularList) {
        print(shopsList.address);
      }
    } else {
      hideLoading();
      print("Error");
      Get.snackbar("Error", "Something went wrong!",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
