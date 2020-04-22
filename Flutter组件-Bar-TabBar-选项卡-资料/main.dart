import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TabBar组件',
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> with SingleTickerProviderStateMixin {

  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _scrollViewController = new ScrollController();
    //长度要和展示部分的Tab数一致
    _tabController = new TabController(vsync: this,length: 6);
  }

  @override
  void dispose(){
    super.initState();
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('选项卡'),
          //前置图标
          leading: Icon(Icons.home),
          //应用栏背景色
          backgroundColor: Colors.green,
          //选项卡
          bottom: TabBar(
            controller: _tabController,
            //是否可以滚动
            isScrollable: true,
              tabs: <Widget>[
                Tab(text: '科技',icon: Icon(Icons.camera),),
                Tab(text: '房产',icon: Icon(Icons.print),),
                Tab(text: '体育',icon: Icon(Icons.favorite),),
                Tab(text: '娱乐',icon: Icon(Icons.share),),
                Tab(text: '电影',icon: Icon(Icons.video_call),),
                Tab(text: '教育',icon: Icon(Icons.airline_seat_flat_angled),),
              ]
          ),
        ),
        //选项卡视图
        body: TabBarView(controller: _tabController,
            children: <Widget>[
              Text('选项卡1'),
              Text('选项卡2'),
              Text('选项卡3'),
              Text('选项卡4'),
              Text('选项卡5'),
              Text('选项卡6'),
            ]
        ),
      ),
    );
  }
}
