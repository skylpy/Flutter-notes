import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ImageFile组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ImageFile组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  //图片文件
  File _image;

   //异步获取本地文件
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Center(
              child: _image == null
                  ? Text('你还未选择任何图片')
                  //文件图片设置
                  : Image.file(
                      _image,
                      //缩放
                      scale: 0.5,
                      //填充模式
                      fit: BoxFit.cover,
                    )),
          //选择图片动作
          RaisedButton(
            onPressed: getImage,
            child: Text(
              '点击选择图片',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
