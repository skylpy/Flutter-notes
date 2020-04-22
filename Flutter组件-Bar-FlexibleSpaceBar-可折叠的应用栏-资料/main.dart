import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlexibleSpaceBar组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('FlexibleSpaceBar组件'),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                SliverAppBar(
                  //展开高度
                  expandedHeight: 150.0,
                  //是否随着滑动隐藏标题
                  floating: false,
                  //是否固定在顶部
                  pinned: true,
                  //可折叠的应用栏
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      '可折叠的组件',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    background: Image.network(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549129578802&di=f866c638ea12ad13c5d603bcc008a6c2&imgtype=0&src=http%3A%2F%2Fpic2.16pic.com%2F00%2F07%2F66%2F16pic_766297_b.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ];
            },
            body: Center(
              child: Text('向上提拉，查看效果'),
            )
        ),
      ),
    );
  }
}


