import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'RadioListTitle组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('RadioListTitle组件'),
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

  String value = '2';

  onChange(v){
    this.setState((){
      value = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<String>(
          //标题
          title: const Text('星期一'),
          //值
          value: '1',
          //右侧图标
          secondary: Icon(Icons.print),
          //当value及groupValue相等时处于选中状态
          groupValue: this.value,
          //是否显示三个
          isThreeLine: false,
          subtitle: const Text('Monday'),
          onChanged: onChange,
        ),
        RadioListTile<String>(
          //标题
          title: const Text('星期二'),
          //值
          value: '2',
          secondary: Icon(Icons.book),
          //当value及groupValue相等时处于选中状态
          groupValue: this.value,
          //是否显示三个
          isThreeLine: false,
          subtitle: const Text('Tuesday'),
          onChanged: onChange,
        ),
      ],
    );
  }
}
