import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //是否显示 debug 标签
      debugShowCheckedModeBanner: false,
      title: "Stack组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack组件"),
        ),
        body:Column(
          children: <Widget>[
            Container(
              width: 300.0,
              height: 300.0,
              color: Colors.red,
              //层叠组件
              child: Stack(
                //对齐方式
                //子组件对齐方式，同 Container 的 alignment 属性一样的，它指定的是所有子组件的对齐方式，所以建议在只有两个子组件的时候
                //使用，如果有三个及以上的子组件时，建议使用 Positioned 包裹子组件来决定子组件的位置，alignment 的可选值有：
                //AlignmentDirectional.topCenter：垂直靠顶部水平居中对齐
                //AlignmentDirectional.topEnd：垂直靠顶部水平靠右对齐
                //AlignmentDirectional.centerStart：垂直居中水平靠左对齐
                //AlignmentDirectional.center：垂直和水平居中都对齐
                //AlignmentDirectional.bottomEnd：垂直居中水平靠右对齐
                //AlignmentDirectional.bottomStart：垂直靠底部水平靠左对齐
                //AlignmentDirectional.bottomCenter：垂直靠底部水平居中对齐
                //AlignmentDirectional.bottomEnd：垂直靠底部水平靠右对齐
                //也可以像我一样指定具体的偏移量，它是以整个组件的中心为坐标原点，x、y 偏移量取值范围为 [-1,1]，如果 x 的偏移量大于 0
                //则表示向右偏移，小于 0 则向左偏移；如果 y 轴的偏移量大于 0 则向下偏移，小于 0 则向上偏移。
                alignment: AlignmentDirectional.center,
                //textDirection: TextDirection.ltr,
                //如何确定没有使用 Position 包裹的子组件的大小，可选值有：
                //StackFit.loose：子组件宽松取值，可以从 min 到 max
                //StackFit.expand：子组件取最大值
                //StackFit.passthrough：不改变子组件约束条件
                //fit: StackFit.loose,
                //超出部分的处理方式
                //overflow: Overflow.clip,
                children: <Widget>[

                  Container(
                    color: Colors.green,
                    width: 100.0,
                    height: 50,
                  ),

                  Text(
                    'Stack组件',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5.0,
                      color: Colors.white,
                    ),
                  ),

                  //定位方式
                  Positioned(
                    right: 10,
                    bottom: 30,
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
