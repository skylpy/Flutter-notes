import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'BoxDecoration组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('BoxDecoration组件'),
        ),
        //对容器进行装饰
        body:Center(
          child: Container(
            width: 300.0,
            height: 300.0,
            //添加装饰
            child: DecoratedBox(
                //装饰定位 DecorationPosition.background背景模式 DecorationPosition.foreground前景模式
                position: DecorationPosition.background,
                decoration: BoxDecoration(
                  //背景色
                  color: Colors.grey,
                  //设置背景图片
                  image: DecorationImage(
                    //图片填充方式
                    fit: BoxFit.cover,
                    image: ExactAssetImage('assets/view.jpeg'),
                  ),
                  //边框弧度
                  //borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    //边框颜色
                    color: Colors.red,
                    //边框粗细
                    width: 6.0,
                  ),
                  //边框样式
                  shape: BoxShape.rectangle,
                ),
              child: Text('定位演示',style: TextStyle(fontSize: 36.0,color: Colors.green),),
            ),
          ),
        ),

      ),
    );

  }
}
