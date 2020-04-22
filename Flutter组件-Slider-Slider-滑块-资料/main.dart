import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Slider组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Slider组件'),
        ),
        body: Center(child: DemoPage(),),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {

  const DemoPage({Key key}) : super(key: key);

  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {

  double value = 0.0;

  @override
  Widget build(BuildContext context) {
      return Slider(
        //实际进度的位置
        value: value,
        min: 0.0,
        max: 100.0,
        label: '当前音量是:$value',
        //进度中活动部分的颜色
        activeColor: Colors.green,
        //进度中未活动部分的颜色
        inactiveColor: Colors.black,
        //分量的个数 划分成多少块
        divisions: 1000,
        //拖动改变回调
        onChanged: (val){
          setState(() {
            value = val.roundToDouble();
          });
        },
        //每滑动一次结果时回调
        onChangeEnd: (val){
          print('onChangeEnd');
        },
        //每滑动一次开始时回调
        onChangeStart: (val){
          print('onChangeStart');
        },
      );
  }
}
