import 'package:get/get.dart';

class BottomNavigationBarComponentController extends GetxController {
  /// bottomNavigationBar SelectedIndex
  final currentIndex = 0.obs;

  /// change bottomNavigationBar SelectedIndex
  void changeCurrentIndex(int index){
    currentIndex.value=index;
  }

}