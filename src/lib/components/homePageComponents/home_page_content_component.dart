import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePageContentComponent extends StatelessWidget {
  const HomePageContentComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(color: Colors.pink),
        height:MediaQuery.of(context).size.height-kToolbarHeight-kBottomNavigationBarHeight-80-120-20,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: ListView(
                  children: [
                    Container(
                      height: 40,
                      child: Text('listView1'),
                    ),

                    Container(
                      height: 40,
                      child: Text('listView2'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView3'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView4'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView5'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView6'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView7'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView8'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView9'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView10'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView11'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView12'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView13'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView14'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView15'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView16'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView17'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView18'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView19'),
                    ),
                    Container(
                      height: 40,
                      child: Text('listView20'),
                    ),
                  ],
                ))
          ],
        ));
  }
}
