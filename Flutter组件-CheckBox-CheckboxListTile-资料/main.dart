import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CheckBoxListTitle组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CheckBoxListTitle组件'),
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
  bool _value = false;

  //全选/全不选切换
  void _valueChanged(bool value) {
    for (var i = 0; i < isChecks.length; i++) {
      isChecks[i] = value;
    }
    setState(() {
      _value = value;
    });
  }

  bool isCheck = false;

  //列表是否选中值
  List<bool> isChecks = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: CheckboxListTile(
            value: _value,
            //默认文字是否高亮
            selected: true,
            onChanged: _valueChanged,
            dense: false,
            //文字是否对齐 图标高度
            isThreeLine: false,
            //文字是否三行显示
            title: Text('整个内容'),
            // 将控件放在何处相对于文本,leading 按钮显示在文字前面,platform,trailing 按钮显示在文字后面
            controlAffinity: ListTileControlAffinity.platform,
            subtitle: Text('勾选下列选项'),
            secondary: Icon(Icons.archive),//左侧小图标
            activeColor: Colors.red,
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[0],
            onChanged: (bool){
              setState(() {
                isChecks[0] = bool;
              });
            },
            title: Text('选项1'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[1],
            onChanged: (bool){
              setState(() {
                isChecks[1] = bool;
              });
            },
            title: Text('选项2'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[2],
            onChanged: (bool){
              setState(() {
                isChecks[2] = bool;
              });
            },
            title: Text('选项3'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[3] = bool;
              });
            },
            title: Text('选项4'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
          ),
        ),
      ],
    );
  }
}
