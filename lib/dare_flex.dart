import 'package:flutter/material.dart';

class FlexDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '弹性布局（Flex）',
      home: new FlexDartWidget(),
    );
  }
}

class FlexDartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('111'),
        ),
        body: Column(
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 100.0,
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.blue,
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.red,
                          )),
                    ],
                  ),
                )),
            DecoratedBox(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.red, Colors.orange[700]]),
                  shape: BoxShape.circle,
                    boxShadow: [ //阴影
                      BoxShadow(
                          color:Colors.black54,
                          offset: Offset(2.0,2.0),
                          blurRadius: 4.0
                      )
                    ]
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ));
  }
}
