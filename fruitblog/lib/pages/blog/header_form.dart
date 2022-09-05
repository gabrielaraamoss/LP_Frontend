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
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
          child: Container(
              width: 500,
              child: const Material(
                child: TextField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '¿Cuál es tu nombre?',
                  ),
                ),
              ))),
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
          child: Container(
              width: 550,
              padding: EdgeInsets.all(20),
              child: const Material(
                child: TextField(
                  maxLines: 4,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      hintText: " ¿En qué estás pensando?",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent))),
                ),
              ))),
      MaterialButton(
        minWidth: 60.0,
        height: 40.0,
        onPressed: () {
          Navigator.pushNamed(context, "/blog");
        },
        color: const Color.fromARGB(255, 62, 168, 113),
        child: const Text('Publicar', style: TextStyle(color: Colors.white)),
      ),
      SizedBox(height: 30),
      PublicationList()
    ]));
  }
}
