import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ListView组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ListView组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
//    //ListView基本用法
//    return ListView(
//      children: <Widget>[
//        //列表项
//        ListTile(
//          leading: Icon(Icons.person),
//          title: Text('A'),
//        ),
//        //列表分割线
//        Divider(height: 10.0,color: Colors.grey,),
//        ListTile(
//          leading: Icon(Icons.print),
//          title: Text('B'),
//        ),
//        Divider(height: 10.0,color: Colors.grey,),
//        ListTile(
//          leading: Icon(Icons.favorite_border),
//          title: Text('C'),
//        ),
//        Divider(height: 10.0,color: Colors.grey,),
//        ListTile(
//          leading: Icon(Icons.lock),
//          title: Text('C'),
//        ),
//        Divider(height: 10.0,color: Colors.grey,),
//
//      ],
//    );
//    return SizedBox(
//      height: 300.0,
//      child: ListView.builder(
//          //排列方向 垂直和水平
//          scrollDirection: Axis.vertical,
//          //列表项个数
//          itemCount: 10,
//          //确定每一个item的高度 会让item加载更加高效
//          itemExtent: 50.0,
//          //physics 滑动类型设置
//          //这个属性几个滑动的选择
//          //    AlwaysScrollableScrollPhysics() 总是可以滑动
//          //    NeverScrollableScrollPhysics禁止滚动
//          //    BouncingScrollPhysics 内容超过一屏 上拉有回弹效果
//          //    ClampingScrollPhysics 包裹内容 不会有回弹
//          //physics: AlwaysScrollableScrollPhysics(),
//          //    这个属性的意思就是预加载的区域
//          //    设置预加载的区域 cacheExtent 强制设置为了 0.0，从而关闭了“预加载”
//          // controller:滑动监听，我们多用于上拉加载更多，通过监听滑动的距离来执行操作
//          //在构造中默认是false primary为true时，controller滑动监听就不能使用了
//          //primary:false ,
//          // shrinkWrap child 高度会适配 item填充的内容的高度,我们非常的不希望child的高度固定，因为这样的话，
//          // 如果里面的内容超出就会造成布局的溢出。
//          //shrinkWrap: false,
//          itemBuilder: (BuildContext context, int index) {
//            return ListTile(
//              title: Text("title $index"),
//              //标题
//              leading: Icon(Icons.favorite_border),
//              //前置图标
//              subtitle: Text("sub title $index"),
//              //子标题
//              trailing: Icon(Icons.arrow_forward),
//              //后置图标
//              isThreeLine: false,
//              //是否显示三行
//              contentPadding: EdgeInsets.all(10.0),
//              //内边距
//              enabled: true,
//              //是否禁用
//              onTap: () {
//                print('点击了：$index');
//              },
//              onLongPress: () {
//                print('长按了：$index');
//              },
//              selected: false,
//            );
//          }),
//    );

//    return SizedBox(
//      height: 300.0,
//
//      //带分割线的ListView
//      child: ListView.separated(
//        //排列方向 垂直和水平
//          scrollDirection: Axis.vertical,
//          //分割线构建器
//          separatorBuilder: (BuildContext context, int index) => Divider(height: 1.0,color: Colors.grey,),
//          //列表项个数
//          itemCount: 100,
//          itemBuilder: (BuildContext context, int index) {
//            return ListTile(
//              title: Text("title $index"),
//              //标题
//              leading: Icon(Icons.favorite_border),
//              //前置图标
//              subtitle: Text("sub title $index"),
//              //子标题
//              trailing: Icon(Icons.arrow_forward),
//              //后置图标
//              isThreeLine: false,
//              //是否显示三行
//              contentPadding: EdgeInsets.all(10.0),
//              //内边距
//              enabled: true,
//              //是否禁用
//              onTap: () {
//                print('点击了：$index');
//              },
//              onLongPress: () {
//                print('长按了：$index');
//              },
//              selected: false,
//            );
//          }),
//    );

    return SizedBox(
      height: 300.0,
      //自定义列表
      child: ListView.custom(
        scrollDirection: Axis.vertical,
        //生成子项
        childrenDelegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              //自定义容器
          return Container(
            height: 50.0,
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text('item $index'),
          );
        }, childCount: 10),
      ),
    );
  }
}
