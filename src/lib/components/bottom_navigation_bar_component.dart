import 'package:bookkeeping/controllers/componentsControllers/bottom_navigation_bar_component_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../icons/book_keeping_bottom_icon.dart';
@immutable
class BottomNavigationBarComponent extends StatelessWidget{
  BottomNavigationBarComponent({super.key});
  final bnBcc = Get.find<BottomNavigationBarComponentController>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //底部菜单超过4个或4个以上
        currentIndex: bnBcc.currentIndex.value,
        onTap: (index){
          bnBcc.changeCurrentIndex(index);
          SystemSound.play(SystemSoundType.click);
        },
        fixedColor: const Color.fromARGB(255, 255, 212, 106),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(BookKpeepingBottomIcon.details,size:30), label: '明细'),
          BottomNavigationBarItem(
              icon: Icon(BookKpeepingBottomIcon.chart,size:30), label: '图表'),
          BottomNavigationBarItem(
              icon: Icon(null,size:30), label: ''),
          BottomNavigationBarItem(
              icon: Icon(BookKpeepingBottomIcon.find,size:30), label: '发现'),
          BottomNavigationBarItem(
              icon: Icon(BookKpeepingBottomIcon.my,size:30), label: '我的')
        ]
    ));
  }
}