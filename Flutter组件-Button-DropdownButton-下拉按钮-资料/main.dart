//文档:https://docs.flutter.io/flutter/material/DropdownButton-class.html
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'DropdownButton组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('DropdownButton组件'),
        ),
        body: new Center(
          child:DropdownButtonDemo(),
        ),
      ),
    );
  }
}

var selectItemValue = '上海';

class DropdownButtonDemo extends StatelessWidget {

  List<DropdownMenuItem> generateItemList(){
    final List<DropdownMenuItem> items = new List();
    final DropdownMenuItem item1 = new DropdownMenuItem(child: Text('北京'),value: '北京',);
    final DropdownMenuItem item2 = new DropdownMenuItem(child: Text('上海'),value: '上海',);
    final DropdownMenuItem item3 = new DropdownMenuItem(child: Text('广州'),value: '广州',);
    final DropdownMenuItem item4 = new DropdownMenuItem(child: Text('深圳'),value: '深圳',);

    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);

    return items;
  }


  @override
  Widget build(BuildContext context) {

    return DropdownButton(
      //提示文本
      hint: Text('请选择一个城市'),
      //下拉列表项数据
      items: generateItemList(),
      value: selectItemValue,
      //下拉三角型图标大小
      iconSize: 48.0,
      //下拉文本样式
      style: TextStyle(
        color: Colors.green,
      ),
      //设置阴影高度
      elevation: 24,
      //将下拉框设置为水平填充成父级
      isExpanded: true,
      //下拉改变事件
      onChanged: (T){
        var obj = T;
      },
    );

  }

}




