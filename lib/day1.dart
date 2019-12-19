import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  //此处继承的是不可变的Widget
  @override
  Widget build(BuildContext context) {
    //MaterialApp 是Material风格的根节点
    return MaterialApp(
      //所以的子节点都在home里面，可以使用Scaffold去显示
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'HelloWorld',
              style: TextStyle(),
            ),
          ),
//
          body: Container(
            decoration: BoxDecoration(color: Colors.amber),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),

            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[Icon(Icons.home), Text('首页')],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[Icon(Icons.add), Text('中间')],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.mail_outline),
                          Text('我的')
                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574074388692&di=1a6ddd33467d78a0b1be6f1120644ffc&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Ffaad29c6643c88d8736be3846c791624725bb492e447-Han5mr_fw658',
                    height: 200,width: 200,    fit: BoxFit.scaleDown,),
                ),

              ],
            ),
          )),
    );
  }
}
