import 'package:flutter/material.dart';
import 'package:fruitblog/pages/blog/header_form.dart';
import 'package:fruitblog/components/side_layout.dart';
import 'package:fruitblog/pages/blog/publication_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fresh Fruits',
      theme: ThemeData(primaryColor: Colors.black),
      home: const MyHomePage(title: 'Fresh Fruits'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[SideLayout(), Expanded(flex: 3, child: Text(''))]);
  }
}
