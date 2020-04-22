import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Chip组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Chip组件'),
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
  List<String> _tags = ['Android', 'iOS', 'Windows', 'MacOS', 'Linux'];

  String _action = 'Android';

  List<String> _selected = [];

  String _choice = 'iOS';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: <Widget>[
              Chip(
                //名称
                label: Text('Flutter'),
              ),
              Chip(
                label: Text('Flutter'),
                //背景色
                backgroundColor: Colors.orange,
              ),
              Chip(
                label: Text('Flutter'),
                //头部
                avatar: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text('Flutter'),
                ),
              ),
              Chip(
                label: Text('Flutter'),
                //头部
                avatar: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549472997448&di=e5e3c5c67c599af9032856e60d739a8f&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201406%2F28%2F20140628134651_sWicV.jpeg'),
                ),
              ),
              Chip(
                label: Text('Android'),
                //删除回调
                onDeleted: () {},
                //删除图标
                deleteIcon: Icon(Icons.delete),
                //删除图标颜色
                deleteIconColor: Colors.redAccent,
                //删除提示
                deleteButtonTooltipMessage: '删除这个标签',
              ),
              Divider(
                color: Colors.grey,
                height: 36.0,
              ),
              Wrap(
                spacing: 8.0,
                children: _tags.map((tag) {
                  //可删除的Chip
                  return Chip(
                    label: Text(tag),
                    onDeleted: () {
                      setState(() {
                        _tags.remove(tag);
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),

          //动作Chip
          Divider(
            color: Colors.grey,
            height: 36.0,
          ),

          Wrap(
            spacing: 8.0,
            children: _tags.map((tag) {
              //动作Chip
              return ActionChip(
                label: Text(tag),
                onPressed: () {
                  setState(() {
                    _action = tag;
                    print(_action);
                  });
                },
              );
            }).toList(),
          ),



          //过滤Chip
          Divider(
            color: Colors.grey,
            height: 36.0,
          ),

          Container(
            width: 200.0,
            child: Text('$_selected.toString()'),
          ),

          Wrap(
            spacing: 8.0,
            children: _tags.map((tag) {
              //过滤Chip
              return FilterChip(
                label: Text(tag),
                //当前Chip是否选中
                selected: _selected.contains(tag),
                //选中回调方法
                onSelected: (value) {
                  setState(() {
                    if(_selected.contains(tag)){
                      _selected.remove(tag);
                    } else {
                      _selected.add(tag);
                    }

                  });
                },
              );
            }).toList(),
          ),




          Divider(
            color: Colors.grey,
            height: 36.0,
          ),

          Container(
            width: 200.0,
            child: Text('$_choice'),
          ),

          Wrap(
            spacing: 8.0,
            children: _tags.map((tag) {
              //选择Chip
              return ChoiceChip(
                label: Text(tag),
                //当前Chip是否选中
                selected: _choice == tag,
                //选中Chip的颜色
                selectedColor: Colors.black,
                //选中回调方法
                onSelected: (value) {
                  setState(() {
                    _choice = tag;
                  });
                },
              );
            }).toList(),
          ),





        ],
      ),
    );
  }
}
