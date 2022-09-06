import 'package:flutter/material.dart';
import 'package:fruitblog/pages/blog/publication_list.dart';

class HeaderForm extends StatefulWidget {
  const HeaderForm({Key? key}) : super(key: key);

  @override
  _HeaderFormState createState() => _HeaderFormState();
}

class _HeaderFormState extends State<HeaderForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/portada.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: 30),
      PublicationList()
    ]));
  }
}
