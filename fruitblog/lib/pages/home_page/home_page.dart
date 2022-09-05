import 'package:flutter/material.dart';
import 'package:fruitblog/pages/home_page/components/header.dart';
import 'package:fruitblog/pages/home_page/components/info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const Header(), const InfoZone()],
    );
  }
}
