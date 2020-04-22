import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AnimatedSwitcher组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AnimatedSwitcher组件'),
        ),
        body: Center(child: DemoPage(),),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {

  const DemoPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {


  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //带动画的Switcher
        AnimatedSwitcher(
          //动画时长
          duration: const Duration(milliseconds: 500),
          //指定过渡动画
          transitionBuilder: (Widget child, Animation<double> animation){
            return ScaleTransition(child: child, scale: animation,);
          },
          //动画显示内容
          child: Text(
            '$_count',
            key: ValueKey<int>(_count),
            style: TextStyle(fontSize: 56.0),
          ),

        ),
        RaisedButton(
          child: const Text('点击+1'),
          onPressed: (){
            setState(() {
              _count +=1;
            });
          },
        ),


      ],
    );
  }
}
