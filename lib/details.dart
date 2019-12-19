import 'package:flutter/material.dart';

class Details extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: new DetailsWidget(context),
    );
  }
}

class DetailsWidget extends StatelessWidget {

  final BuildContext mContext;
  DetailsWidget(this.mContext);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new
    Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: <Widget>[
//图
                  Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574074388692&di=1a6ddd33467d78a0b1be6f1120644ffc&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Ffaad29c6643c88d8736be3846c791624725bb492e447-Han5mr_fw658',
                    height: 240,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
//标题栏

                  TextFormField(
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 5),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    '我是第一行',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  padding: EdgeInsets.only(bottom: 5),
                                ),
                                Text(
                                  '我是第二行',
                                  style: TextStyle(
                                      color: Colors.black12, fontSize: 12),
                                )
                              ],
                            )),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Text("42")
                      ],
                    ),
                  ),

//按钮区域
                  _buildButton(),

//文字部分
                  _text(),

                  Container(
                    child: RaisedButton(

                      onPressed: () =>
                      Navigator.pop(mContext,'我是返回值'),
//
                      child: Text('跳转'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Container _text() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        '一旦图解好布局，采取自下而上的方法来实现它就变得尤为轻松了'
            '。为了最大程度减少，深层嵌套的布局代码带来的视觉混乱，一旦图解好布局'
            '，采取自下而上的方法来实现它就变得尤为轻松了。'
            '为了最大程度减少，深层嵌套的布局代码带来的视觉混乱，'
            '需要用一些变量和函数来替代某些实现。需要用一些变量和函数来替代某些实现。',
        style: TextStyle(height: 2),
      ),
    );
  }

  Container _buildButton() {
    return Container(
      margin: EdgeInsets.only(
          left: 40, right: 40, bottom: 5, top: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Icon(Icons.local_phone),
                Text('电话')
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Icon(Icons.local_phone),
                Text('电话')
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Icon(Icons.local_phone),
                Text('电话')
              ],
            ),
          ),
        ],
      ),
    );
  }
}





