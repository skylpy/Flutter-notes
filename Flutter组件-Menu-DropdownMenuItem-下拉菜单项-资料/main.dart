import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'DropdownMenuItem组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('DropdownMenuItem组件'),
        ),
        body: DemoPage(),
      ),
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

  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text('下拉菜单按钮'),
        trailing: DropdownButton(
          value: dropdownValue,
          onChanged: (String val) {
            setState(() {
              dropdownValue = val;
            });
          },
          //渲染所有菜单项
          items: <String>['One','Two','Three','Four'].map<DropdownMenuItem<String>>((String value){
            //渲染每一个可选项
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );

  }

}
