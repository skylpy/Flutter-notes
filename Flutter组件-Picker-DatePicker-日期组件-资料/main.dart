import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'DatePicker组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('DatePicker组件'),
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

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        //初始日期
        initialDate: _date,
        //起始日期
        firstDate: DateTime(2019,1),
        //结束日期
        lastDate: DateTime(2020));
        if(picked != null && picked != _date){
          print('当前选择的日期是:${_date.toString()}' );
        }
        setState(() {
          _date = picked;
        });


        if(picked == null){
          _date = new DateTime.now();
        }

  }


  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
      initialTime: _time,
    );
    if(picked != null && picked != _time){
      print('当前选择的时间是:${_time.toString()}' );
    }
    setState(() {
      _time = picked;
    });


    if(picked == null){
      _time = new TimeOfDay.now();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('日期选择'),
          RaisedButton(
            child: Text('日期选择结果:${_date.toString()}'),
            onPressed: (){
              _selectDate(context);
            },
          ),
          Text('时间选择'),
          RaisedButton(
            child: Text('时间选择结果:${_time.toString()}'),
            onPressed: (){
              _selectTime(context);
            },
          ),
        ],
      ),
    );
  }

}
