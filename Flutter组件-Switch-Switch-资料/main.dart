import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Switch组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Switch组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          //决定Switch打开还是关闭
          value: this.check,
          onChanged: (bool value) {
            this.setState(() {
              this.check = !this.check;
            });
          },
        ),
        Switch.adaptive(
          value: this.check,
          //激活时原点的颜色
          activeColor: Colors.red,
          onChanged: (bool value) {
            this.setState(() {
              this.check = !this.check;
            });
          },
        ),
        SizedBox(
          width: 100.0,
          height: 30.0,
          child: Switch(
            //决定Switch打开还是关闭
            value: this.check,
            //激活时原点的颜色
            activeColor: Colors.red,
            //激活时滑轨的颜色
            activeTrackColor: Colors.orange,
            //激活时按钮的背景图片
            activeThumbImage: NetworkImage('https://flutter.io/assets/homepage/news-1-2ab8ef4d7570c3e4f481fd839365fbfc11ea97bdb7fd9fb5fd38aa3348149136.png'),

            
            //非激活时原点的颜色
            inactiveThumbColor: Colors.green,
            //非激活时滑轨的颜色
            inactiveTrackColor: Colors.yellow,
            //非激活时按钮的背景图片
            inactiveThumbImage: NetworkImage('https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png'),

            


            onChanged: (bool value) {
              this.setState(() {
                this.check = !this.check;
              });
            },
          ),
        ),

      ],
    );
  }
}
