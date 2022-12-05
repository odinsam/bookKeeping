import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/bottom_navigation_bar_component.dart';
import '../components/floating_action_button_component.dart';
import '../components/homePageComponents/home_page_content_component.dart';
import '../components/homePageComponents/home_page_header_component.dart';
import '../components/homePageComponents/home_page_header_icons_component.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 255, 212, 106),
        surfaceTintColor: null,
        title: const Text('记账簿',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                HomePageHeaderComponent(),
                HomePageHeaderIconsComponent(),
                HomePageContentComponent(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBarComponent(),
      floatingActionButton:FloatingActionButtonComponent(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
