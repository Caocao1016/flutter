import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
/// ListPage class
///
/// 创建一个可变的widget,练习列表
class ListPage extends StatefulWidget {
  _ListPageWidger createState() => _ListPageWidger();
}



class _ListPageWidger extends State<ListPage> {



  @override
  void initState() {

    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
    RefreshController _refreshController =
    RefreshController(initialRefresh: false);

    void _onRefresh() async{
      // monitor network fetch
      await Future.delayed(Duration(milliseconds: 1000));
      // if failed,use refreshFailed()
      _refreshController.refreshCompleted();
    }

    void _onLoading() async{
      // monitor network fetch
      await Future.delayed(Duration(milliseconds: 1000));
      // if failed,use loadFailed(),if no data return,use LoadNodata()
      items.add((items.length+1).toString());
      if(mounted)
        setState(() {

        });
      _refreshController.loadComplete();
    }


      return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('列表'),
          centerTitle: true,
          backgroundColor: Colors.blue,
            //去掉分割线
            elevation: 0,
        ),
        body:SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          header: WaterDropHeader(),
          footer: CustomFooter(
            builder: (BuildContext context,LoadStatus mode){
              Widget body ;
              if(mode==LoadStatus.idle){
                body =  Text("上拉加载");
              }
              else if(mode==LoadStatus.loading){
                body =  CupertinoActivityIndicator();
              }
              else if(mode == LoadStatus.failed){
                body = Text("加载失败！点击重试！");
              }
              else if(mode == LoadStatus.canLoading){
                body = Text("松手,加载更多!");
              }
              else{
                body = Text("没有更多数据了!");
              }
              return Container(
                height: 55.0,
                child: Center(child:body),
              );
            },
          ),
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: ListView.builder(
            itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
            itemExtent: 100.0,
            itemCount: items.length,
          ),
        ),
      ),
    );
  }
}
