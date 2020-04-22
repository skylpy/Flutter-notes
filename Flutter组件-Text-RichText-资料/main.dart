//文档地址 https://docs.flutter.io/flutter/widgets/RichText-class.html

import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        title: '富文本组件',
        home: new TextDemo(),
      )
  );
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: RichText(
          text: TextSpan(
            text: 'I ',
            style: TextStyle(fontSize:38.0,fontWeight: FontWeight.bold,),
            children: <TextSpan>[
              TextSpan(text: 'want ', style: TextStyle(fontSize:32.0,fontWeight: FontWeight.bold, color: Colors.red)),
              TextSpan(text: ' study', style: TextStyle(fontSize:32.0,fontStyle: FontStyle.italic)),
              TextSpan(text: ' flutter', style: TextStyle(fontSize:32.0,fontStyle: FontStyle.italic,color: Colors.green,)),
            ],
          ),

      ),
    );
  }
}