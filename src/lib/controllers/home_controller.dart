import 'package:flutter/services.dart';
import 'package:flutter_pangle_ads/flutter_pangle_ads.dart';
import 'package:get/get.dart';

import '../ads/ad_utils.dart';
import '../ads/ads_config.dart';

class HomeController extends GetxController {
  var adResult = "".obs;
  @override
  void onInit() async{
    var adUtils = AdUtils();
    // TODO: implement onInit
    await adUtils.init().then((value) async{
      if(value){
        String str = await adUtils.showSplashAd(AdsConfig.logo);
        adResult.value=str;
        print(str);
      }
    });
    print("_adEvent:$adResult");
    adUtils.setAdEvent();
    super.onInit();
  }
}