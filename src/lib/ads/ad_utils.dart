import 'package:flutter/services.dart';
import 'package:flutter_pangle_ads/flutter_pangle_ads.dart';

import 'ads_config.dart';

class AdUtils{
  /// 初始化广告 SDK
  Future<bool> init() async {
    String adResult="";
    try {
      bool result = await FlutterPangleAds.initAd(
        AdsConfig.appId,
        directDownloadNetworkType: [
          NetworkType.kNetworkStateMobile,
          NetworkType.kNetworkStateWifi,
        ],
      );
      adResult = "广告SDK 初始化${result ? '成功' : '失败'}";
      // 打开个性化广告推荐
      // FlutterPangleAds.setUserExtData(personalAdsType: '1');
      return result;
    } on PlatformException catch (e) {
      adResult =
      "广告SDK 初始化失败 code:${e.code} msg:${e.message} details:${e.details}";
    }
    return false;
  }

  /// 设置广告监听
  String setAdEvent(){
    var adEvent = '设置成功';
    FlutterPangleAds.onEventListener((event) {
      adEvent = 'adId:${event.adId} action:${event.action}';
      if (event is AdErrorEvent) {
        // 错误事件
        adEvent += ' errCode:${event.errCode} errMsg:${event.errMsg}';
      } else if (event is AdRewardEvent) {
        // 激励事件
        adEvent +=
        ' rewardType:${event.rewardType} rewardVerify:${event.rewardVerify} rewardAmount:${event.rewardAmount} rewardName:${event.rewardName} errCode:${event.errCode} errMsg:${event.errMsg} customData:${event.customData} userId:${event.userId}';
      }
      // 测试关闭 Banner（会员场景）
      if (event.action == AdEventAction.onAdClosed &&
          event.adId == AdsConfig.bannerId02) {
        adEvent += '仅会员可以关闭广告';
      }
      print('onEventListener:$adEvent');
    });
    return adEvent;
  }

  /// 展示开屏广告
  /// [logo] 展示如果传递则展示logo，不传递不展示
  Future<String> showSplashAd([String? logo]) async{
    String adResult = "";
    try {
      bool result = await FlutterPangleAds.showSplashAd(
        AdsConfig.splashId,
        logo: logo,
        timeout: 3.5,
      );
      adResult = "展示开屏广告${result ? '成功' : '失败'}";
    } on PlatformException catch (e) {
      adResult = "展示开屏广告失败 code:${e.code} msg:${e.message} details:${e.details}";
    }
    return adResult;
  }
}