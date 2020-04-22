import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GridView组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('GridView组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DemoPageState();
  }
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: _buildGridCustom(),
    );
  }

  Widget _buildGridExtent() {
    return GridView.extent(
      //横轴的最大长度
      maxCrossAxisExtent: 180.0,
      //内边距
      padding: EdgeInsets.all(4.0),
      //垂直方向的间距
      mainAxisSpacing: 4.0,
      //水平方向的间距
      crossAxisSpacing: 4.0,
      children: _buildGridTitleList(30),
    );
  }

  //创建指定列数的Grid
  Widget _buildGridCount() {
    return GridView.count(
      //指定多少列
      crossAxisCount: 4,
      //内边距
      padding: EdgeInsets.all(4.0),
      //垂直方向的间距
      mainAxisSpacing: 4.0,
      //水平方向的间距
      crossAxisSpacing: 4.0,
      children: _buildGridTitleList(30),
    );
  }

  //可懒加载的Grid 只有可见的部分加载
  Widget _buildGridSliver() {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(20.0),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            children: _buildGridTitleList(30),
          ),
        ),
      ],
    );
  }

  //SliverGridDelegateWithFixedCrossAxisCount可以指定列的个数的Grid
  //SliverGridDelegateWithMaxCrossAxisExtent根据每个宽度自动计算的Grid
  Widget _buildGridCustom() {
    return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return Image.asset('assets/cat.jpeg');
        },
        childCount: 30,
      ),
    );
  }

  List<Container> _buildGridTitleList(int count) {
    return List.generate(
        count,
        (int index) => Container(
              child: Image.asset('assets/cat.jpeg'),
            ));
  }
}
