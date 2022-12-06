import 'package:flutter/material.dart';

class HomePageHeaderComponent extends StatelessWidget {
  const HomePageHeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 255, 212, 106)),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              flex: 15,
              child: Container(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: Text(
                          '2022年',
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 18),
                        )),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Row(
                              children: [
                                Text('12',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 36)),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '月',
                                        strutStyle: StrutStyle(),
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 20,
                                            textBaseline:
                                                TextBaseline.ideographic),
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 30,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 20,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 1,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(color: Colors.black26),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5, left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Text(
                                '收入',
                                style: TextStyle(
                                    fontWeight: FontWeight.w100, fontSize: 18),
                              )),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text('0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 36)),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            alignment: Alignment.center,
                                            child: Text(
                                              '.00',
                                              strutStyle: StrutStyle(),
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 20,
                                                  textBaseline:
                                                      TextBaseline.ideographic),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ))
                  ],
                ),
              )),
          Expanded(
              flex: 20,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 5, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Text(
                                '支出',
                                style: TextStyle(
                                    fontWeight: FontWeight.w100, fontSize: 18),
                              )),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text('0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 36)),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            alignment: Alignment.center,
                                            child: Text(
                                              '.00',
                                              strutStyle: StrutStyle(),
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 20,
                                                  textBaseline:
                                                      TextBaseline.ideographic),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
