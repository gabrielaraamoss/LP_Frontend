import 'package:flutter/material.dart';
import 'package:fruitblog/main.dart';
import 'package:fruitblog/pages/blog/blog.dart';
import 'package:fruitblog/pages/home_page/home_page.dart';

class SideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
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
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 0, 0))),
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
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyHomePage(title: 'Fresh Fruits')),
                      );
                    },
                    child: Text(
                      'Inicio',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Color.fromARGB(223, 97, 97, 93),
                          decoration: TextDecoration.none,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 50),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BlogPage(title: 'Fresh Fruits')),
                      );
                    },
                    child: Text(
                      'Blog',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Color.fromARGB(223, 97, 97, 93),
                          decoration: TextDecoration.none,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
