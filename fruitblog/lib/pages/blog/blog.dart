import 'package:flutter/material.dart';
import 'package:fruitblog/pages/blog/header_form.dart';
import 'package:fruitblog/components/side_layout.dart';
import 'package:fruitblog/pages/blog/publication_list.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SideLayout(),
      Expanded(flex: 3, child: Stack(children: [PublicationList()]))
    ]);
  }
}
