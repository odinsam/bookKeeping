import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/componentsControllers/bottom_navigation_bar_component_controller.dart';

class FloatingActionButtonComponent extends StatelessWidget{
  FloatingActionButtonComponent({super.key});
  final bnBcc = Get.find<BottomNavigationBarComponentController>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 70,
      height: 70,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(top: 35),
      decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.circular(40)),
      child: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 212, 106),
        child: const Icon(Icons.add,color: Colors.black,size: 40,),
        onPressed: (){
          bnBcc.changeCurrentIndex(2);
          SystemSound.play(SystemSoundType.click);
        },
      ),
    );
  }
}