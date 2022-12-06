import 'package:flutter/material.dart';
import '../../icons/book_keeping_header_icon.dart';

class HomePageHeaderIconsComponent extends StatelessWidget {
  const HomePageHeaderIconsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 255, 212, 106), Colors.white])),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 20, offset: Offset(0, -10))
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 255, 255, 255), Colors.white])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Column(children: [
                Icon(
                  BookKpeepingHeaderIcon.bill,
                  size: 40,
                  color: const Color.fromARGB(255, 255, 212, 106),
                ),
                SizedBox(height: 10),
                Text("账单")
              ]),
            ),
            Container(
              child: Column(children: [
                Icon(
                  BookKpeepingHeaderIcon.budget,
                  size: 40,
                  color: const Color.fromARGB(255, 255, 212, 106),
                ),
                SizedBox(height: 10),
                Text("预算")
              ]),
            ),
            Container(
              child: Column(children: [
                Icon(
                  BookKpeepingHeaderIcon.homeBill,
                  size: 40,
                  color: const Color.fromARGB(255, 255, 212, 106),
                ),
                SizedBox(height: 10),
                Text("家庭")
              ]),
            ),
            Container(
              child: Column(children: [
                Icon(
                  BookKpeepingHeaderIcon.bookKeeping,
                  size: 40,
                  color: const Color.fromARGB(255, 255, 212, 106),
                ),
                SizedBox(height: 10),
                Text("账本")
              ]),
            )
          ],
        ),
      ),
    );
  }
}
