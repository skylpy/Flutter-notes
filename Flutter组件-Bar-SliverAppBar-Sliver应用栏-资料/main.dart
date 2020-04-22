import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SliverAppBar组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SliverAppBar组件'),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                SliverAppBar(
                  //是否预留高度
                  primary:true,
                  //标题前面显示的一个控件
                  leading: Icon(Icons.home),
                  //操作按钮
                  actions: <Widget>[
                    Icon(Icons.add),
                    Icon(Icons.print),
                  ],
                  //设置阴影值
                  elevation: 10.0,
                  //是否固定在顶部
                  pinned: true,
                  //可扩展区域高度
                  expandedHeight: 200.0,
                  //与floating结合使用
                  snap: false,
                  //是否随着滑动隐藏标题
                  floating: false,
                  //扩展区域
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      '这是一个很酷的标题',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    //折叠区域背景图
                    background: Image.network(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549130693538&di=17ac409c8d4e7ca9eea29b34820a2212&imgtype=0&src=http%3A%2F%2Fs9.knowsky.com%2Fbizhi%2Fl%2F20090606%2F200906186%2520%25281%2529.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ];
            },
            body: Center(
              child: Text(
                '拖动试试'
              ),
            ),
        ),
      ),
    );
  }
}


