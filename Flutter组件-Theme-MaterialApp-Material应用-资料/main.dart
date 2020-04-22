import 'package:flutter/material.dart';

void main() => runApp(MaterialAppDemo());

/*
- title ： 在任务管理窗口中所显示的应用名字
- theme ： 应用各种 UI 所使用的主题颜色
- color ： 应用的主要颜色值（primary color），也就是安卓任务管理窗口中所显示的应用颜色
- home ： 应用默认所显示的界面 Widget
- routes ： 应用的顶级导航表格，这个是多页面应用用来控制页面跳转的，类似于网页的网址
- initialRoute ：第一个显示的路由名字，默认值为 Window.defaultRouteName
- onGenerateRoute ： 生成路由的回调函数，当导航的命名路由的时候，会使用这个来生成界面
- onLocaleChanged ： 当系统修改语言的时候，会触发å这个回调
- navigatorObservers ： 应用 Navigator 的监听器
- debugShowMaterialGrid ： 是否显示 Material design 基础布局网格，用来调试 UI 的工具
- showPerformanceOverlay ： 显示性能标签
- checkerboardRasterCacheImages 、showSemanticsDebugger、debugShowCheckedModeBanner 各种调试开关
*/

class MaterialAppDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //debugShowMaterialGrid: true,
      showPerformanceOverlay: true,
      title: '应用名称',
      color: Colors.green,
      home: DemoPage(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
//      initialRoute: '/second',
//      routes: <String,WidgetBuilder>{
//        '/':(BuildContext context) => FirstScreen(),
//        '/second': (BuildContext context) => SecondScreen(),
//      },
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
    return Container(
      height: 400.0,
      //滚动页面
      child: PageView(
        //翻滚方向
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            child: Center(
              child: Text('这是第一页',style: TextStyle(color: Colors.white,fontSize: 28.0),),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('这是第二页',style: TextStyle(color: Colors.white,fontSize: 28.0),),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text('这是第三页',style: TextStyle(color: Colors.white,fontSize: 28.0),),
            ),
          ),


        ],
      ),
    );
  }
}



class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('First Screen'),
          onPressed: (){

          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Second Screen'),
          onPressed: (){

          },
        ),
      ),
    );
  }
}