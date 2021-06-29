import 'package:flutter/material.dart';
import 'package:list_view/ListViewBuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListViewBuilderPage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Widget> list = [
    ListTile(
      title: Text(
        "測試標題一",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      subtitle: Text("測試內容一"),
      leading: Icon(
        Icons.access_alarm,
        color: Colors.blue,
      ),
    ),
    ListTile(
        leading: Icon(
      Icons.access_alarm,
      color: Colors.blue,
    )),
    ListTile(
        leading: Icon(
      Icons.access_alarm,
      color: Colors.blue,
    ))
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: list,
      ),
    );
  }
}
