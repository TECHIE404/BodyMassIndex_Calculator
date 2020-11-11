import 'package:flutter/material.dart';

class SecPage extends StatefulWidget {
  @override
  _SecPageState createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scound page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Text('secpage'),
      ),
    );
  }
}

class Mydata {
  var a = 1;
  int myfun(int num) {
    return a + num;
  }
}
