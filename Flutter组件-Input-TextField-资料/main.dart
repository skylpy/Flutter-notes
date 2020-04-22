//文档地址:https://docs.flutter.io/flutter/material/TextField-class.html
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(''),
        ),
        body:LoginPage(),
      ),
    );
  }
}

//登录组件
class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => LoginPageState();

}

class LoginPageState extends State<LoginPage>{

  //文本编辑控制器
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        TextField(
          controller: usernameController,
          //TextCapitalization.words 将每个单词的首字母大写
          //TextCapitalization.sentences 将首字母大写
          //TextCapitalization.characters 将所有字母大写
          textCapitalization: TextCapitalization.characters,
          //键盘类型
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            //内容的内边距
            contentPadding: EdgeInsets.all(10.0),
            icon: Icon(Icons.person),
            //提示文本
            labelText: '请输入你的用户名',
            helperText: '请输入注册的用户名',
          ),
          //键盘插件按钮样式
          textInputAction: TextInputAction.go,
          //设置光标样式
//          cursorColor: Colors.green,
//          cursorRadius: Radius.circular(16.0),
//          cursorWidth: 16.0,
        ),
        TextField(
          controller: passwordController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            icon: Icon(Icons.lock),
            labelText: '请输入密码',
          ),
          obscureText: true,
        ),
        RaisedButton(
          onPressed: (){
            loginCheck();
          },
          child: Text('登录'),
        ),

        //decoration示例
//        TextField(
//          //带外边框的样式
//          decoration: InputDecoration(
//            border: OutlineInputBorder(),
//            hintText: '请输入你的用户名',
//            labelText: '用户名',
//            prefixIcon: Icon(Icons.person),
//            suffixIcon: Icon(Icons.print),
//          ),
//        ),

      ],
    );
  }

  loginCheck(){

    if(usernameController.text.length != 11){
      print('请输入正确的手机号');
    }

    if(passwordController.text.length != 6){
      print('请输入6位以上的密码');
    }

  }


}
