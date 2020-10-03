import 'package:animations/animatedwidget.dart';
import 'package:animations/productbox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return MaterialApp(
      title: "Animation Example",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Home Page Title', animation: animation),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Animation<double> animation;
  final String title;

  MyHomePage({Key key, this.title, this.animation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          FadeTransition(
              child: ProductBox(
                  "iphone", 1000, "Its iphone 12", "laptop200_200.png"),
              opacity: animation),
          MyAnimatedWidget(
            animation: animation,
            child: ProductBox(
                "laptop111", 240, "Animation for laptop", "laptop200_200.png"),
          ),
          ProductBox("Laptop", 200, "description", "laptop200_200.png"),
          ProductBox("Laptop1", 100, "description", "laptop200_200.png"),
          ProductBox("Laptop2", 400, "description", "laptop200_200.png"),
          ProductBox("Laptop3", 300, "description", "laptop200_200.png")
        ],
      ),
    );
  }
}
