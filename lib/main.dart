import 'package:flutter/material.dart';
import 'theme/style.dart';
import 'package:test3/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Image(image:AssetImage(
            'images/2.jpg',
          ),),
          SizedBox(height: 60),
          GradientBtnWidget(
              width: 208,
              height:400,
              child: Text(
                "Sign Up",
                style:TextStyle(
                  color:Color(0xFFECECEC),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
          ),
          SizedBox(height: 16),
          GestureDetector(
            child: LoginBtnWidget(),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=>LoginPage()
                  )
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white
      ),
    );
  }
}

class LoginBtnWidget extends StatelessWidget {
  const LoginBtnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kBtnShadow,
        borderRadius: BorderRadius.circular(24),
      ),
      alignment: Alignment.center,
      child: Text(
        'Login',
        style: kBtnTextStyle,
      ),
    );
  }
}

/// Gradient Button
class GradientBtnWidget extends StatelessWidget {
  const GradientBtnWidget({
    Key? key, required this.width, required this.height, required this.child,

  }) : super(key: key);
  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: 48,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFA6B74),Color(0xFFF89500)],
          ),
          boxShadow: kBtnShadow,
          borderRadius: BorderRadius.circular(24),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}