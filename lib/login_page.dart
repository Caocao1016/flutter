import 'package:flutter/material.dart';
import 'package:flutter_app/photo_img.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
                icon: ImageIcon(
                  AssetImage('images/ic_back.png'),
                  size: 48,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context, '我是返回值');
                }),
            title:
                Text('登录', style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
          body: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    constraints: BoxConstraints.tight(new Size(100, 100)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/ic_logo.png'))),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '账号',
                        ),
                        buildExpanded()
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '账号',
                        ),
                        buildExpanded()
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                    height: 48,
                    child: RaisedButton(
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        '登录',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: null,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                    height: 48,
                    child: RaisedButton(
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        '跳转到图片选择',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PhotoImg()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Expanded buildExpanded() {
    return Expanded(
                        child: TextField(
                          decoration: new InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            hintText: "请输入手机号",
                            border: InputBorder.none,
                          ),
                          style:
                              TextStyle(color: Colors.black, fontSize: 16.0),
                          onSubmitted: (value) {
                            print("------------文字提交触发（键盘按键）--");
                          },
                          onEditingComplete: () {
                            print("----------------编辑完成---");
                          },
                          onChanged: (value) {
                            print("----------------输入框中内容为:$value--");
                          },
                        ),
                      );
  }
}
