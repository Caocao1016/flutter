import 'package:flutter/material.dart';

/**
 * 绝对布局，可重叠
 */
class StackDrat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: StackWidget(),
    );
  }
}

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: AppBar(title: Text('StackDrat'),),
            preferredSize: Size.fromHeight(50)),
        body: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                
                Positioned(
                  left: 10,
                    top: 10,
                    child: Text('距离左上角10')),
                Container(
                  child: Text("我是默认居中的"),
                ),
                Positioned(
                  bottom: 100,
                    child: Text('底部100')
                )
              ],
              
        )));
  }
}
