import 'package:bookkeeping/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx_binding.dart';

void main() {
  // 绑定引擎
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(

    initialBinding: GetxBinding(),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}