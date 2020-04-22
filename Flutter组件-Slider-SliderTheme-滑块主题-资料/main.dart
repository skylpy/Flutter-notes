import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SliderTheme组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SliderTheme组件'),
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
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        //已拖动的颜色
        activeTrackColor: Colors.greenAccent,
        //未拖动的颜色
        inactiveTrackColor: Colors.green,

        //提示进度的气泡的背景色
        valueIndicatorColor: Colors.green,
        //提示进度的气泡文本的颜色
        valueIndicatorTextStyle: TextStyle(
          color:Colors.white,
        ),

        //滑块中心的颜色
        thumbColor: Colors.blueAccent,
        //滑块边缘的颜色
        overlayColor: Colors.white,

        //divisions对进度线分割后，断续线中间间隔的颜色
        inactiveTickMarkColor: Colors.white,

      ),
      child: Slider(
        value: value,
        label: '$value',
        min: 0.0,
        max: 100.0,
        divisions: 10,
        onChanged: (val){
          setState(() {
            value = val.floorToDouble();//转化成double
          });
        },
      ),
    );
  }
}
