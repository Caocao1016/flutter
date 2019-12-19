import 'package:flutter/material.dart';
import 'package:flutter_app/day1.dart';
import 'package:flutter_app/details.dart';
import 'package:flutter_app/list.dart';
import 'package:flutter_app/login_page.dart';
import 'package:flutter_app/photo_img.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomeWidget(),

      routes: {
        'login':(context)=>LoginPage(),
        'list':(context)=>ListPage(),
        'details':(context)=>HomeWidget(),
      },
    );
  }
}


class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new
    Scaffold(
      appBar: AppBar(
        title: Text('111'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              RaisedButton(child: Text('详情页'), onPressed: () async {
//                var result = await Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => Details()),
//                );


                var result =  await Navigator.pushNamed(context,'details' );
                print("路由返回值: $result");
              }),
              RaisedButton(child: Text('登录页'), onPressed: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => LoginPage(),
//
//                  ),
//                );
              
              Navigator.pushNamed(context, 'login');


              }),
              RaisedButton(child: Text('选择图片'), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotoImg()),
                );
              }),

              RaisedButton(child: Text('列表'), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              }),

            ]),

      ),
    );
  }

}