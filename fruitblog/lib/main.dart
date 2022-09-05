import 'package:flutter/material.dart';
import 'package:fruitblog/pages/home_page/home_page.dart';

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
<<<<<<< HEAD
    return Scaffold(
      body: Row(children: <Widget>[
        SideLayout(),
        Expanded(flex: 3, child: Stack(children: [HomePage()]))
      ]),
    );
  }
}

class SideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 70),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
                children: <TextSpan>[
                  TextSpan(text: 'Fr'),
                  TextSpan(
                      text: 'es',
                      style: TextStyle(color: Color.fromARGB(255, 255, 0, 0))),
                  TextSpan(
                      text: 'h F',
                      style:
                          TextStyle(color: Color.fromARGB(255, 251, 235, 0))),
                  TextSpan(
                      text: 'ru',
                      style:
                          TextStyle(color: Color.fromARGB(255, 251, 167, 0))),
                  TextSpan(
                      text: 'its',
                      style:
                          TextStyle(color: Color.fromARGB(255, 50, 202, 90))),
                ],
              ),
            ),
            Image.asset(
              'assets/fruit.png',
              height: 70,
              width: 70,
            ),
            const SizedBox(height: 30),
            Expanded(
                child: Column(
              children: const <Widget>[
                Text(
                  'Inicio',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Color.fromARGB(223, 97, 97, 93),
                      decoration: TextDecoration.none,
                      fontSize: 30),
                ),
                SizedBox(height: 50),
                Text('Blog',
                    style: TextStyle(
                        color: Color.fromARGB(223, 97, 97, 93),
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(223, 97, 97, 93),
                        fontSize: 30)),
                SizedBox(height: 50),
                Text('Producto',
                    style: TextStyle(
                        color: Color.fromARGB(223, 97, 97, 93),
                        decoration: TextDecoration.none,
                        fontSize: 30)),
                SizedBox(height: 50),
                Text('Contacto',
                    style: TextStyle(
                        color: Color.fromARGB(223, 97, 97, 93),
                        decoration: TextDecoration.none,
                        fontSize: 30)),
              ],
            ))
          ],
        ),
      ),
    );
=======
    return Row(
        children: <Widget>[SideLayout(), Expanded(flex: 3, child: Text(''))]);
>>>>>>> e6b5d8f (Reorganizando)
  }
}
