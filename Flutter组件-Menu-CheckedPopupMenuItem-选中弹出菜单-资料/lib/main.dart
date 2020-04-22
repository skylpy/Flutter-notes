import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CheckedPopupMenuItem组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CheckedPopupMenuItem组件'),
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

  //已选择的菜单项
  List<String> _checkedValues;

  final String _checkedValue1 = 'One';
  final String _checkedValue2 = 'Two';
  final String _checkedValue3 = 'Three';
  final String _checkedValue4 = 'Four';

  @override
  void initState(){
    super.initState();
    //初始化已选中的项
    _checkedValues = <String>[_checkedValue2];
  }

  //检测传入的值是否在_checkedValues里
  bool isChecked(String value) => _checkedValues.contains(value);

  void showCheckedMenuSelections(String value){
    if(_checkedValues.contains(value)){
      _checkedValues.remove(value);
    }else{
      _checkedValues.add(value);
    }
    showInSnackBar('Checked $_checkedValues');
  }

  //弹出已选择的项
  void showInSnackBar(String value){
    Fluttertoast.showToast(
        msg: value,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
    );
  }


  @override
  Widget build(BuildContext context) {
     return Container(
       color: Theme.of(context).primaryColor,
       child: ListTile(
         title: Text('有选择标记的弹出菜单',style: TextStyle(color: Colors.white),),
         trailing: PopupMenuButton<String>(
           padding: EdgeInsets.zero,
           onSelected: showCheckedMenuSelections,
           //弹出按钮图标
           icon: Icon(Icons.menu,color: Colors.white,),
           itemBuilder: (BuildContext context) =><PopupMenuItem<String>>[
             //有选择标记的弹出菜单项
              CheckedPopupMenuItem<String>(
                value: _checkedValue1,
                checked: isChecked(_checkedValue1),
                child: Text(_checkedValue1),
              ),
              CheckedPopupMenuItem<String>(
                value: _checkedValue2,
                //当前项是否可点击
                enabled: false,
                //当前项是否被选中
                checked: isChecked(_checkedValue2),
                child: Text(_checkedValue2),
              ),
              CheckedPopupMenuItem<String>(
                value: _checkedValue3,
                checked: isChecked(_checkedValue3),
                child: Text(_checkedValue3),
              ),
              CheckedPopupMenuItem<String>(
                value: _checkedValue4,
                checked: isChecked(_checkedValue4),
                child: Text(_checkedValue4),
              ),
           ],
         ),
       ),
     );
  }

}
