//文档地址:https://docs.flutter.io/flutter/material/Checkbox-class.html
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CheckBox组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CheckBox组件'),
        ),
        body:DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => DemoPageState();

}

class DemoPageState extends State<DemoPage>{

  //当前选中的索引
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Checkbox(
          //激活时的颜色
          activeColor: Colors.red,
          //是否被选中
          value: 0 == currentIndex,
          //如果tristate的值为true 那个value的值可能为true false null
          tristate: false,
          //值发生变化
          onChanged: (bool check){
            setState(() {
              if(check){
                currentIndex = 0;
              }
            });
          },

        ),
        Checkbox(
          //激活时的颜色
          activeColor: Colors.red,
          //是否被选中
          value: 1 == currentIndex,
          onChanged: (bool check){
            setState(() {
              if(check){
                currentIndex = 1;
              }
            });
          },

        ),
      ],
    );
  }


}
