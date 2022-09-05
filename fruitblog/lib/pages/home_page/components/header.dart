import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        decoration: _decorationBackground(),
        child: buttons(),
      ),
    );
  }

  Widget buttons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(
          flex: 6,
        ),
        Flexible(
            flex: 3,
            child: Column(
              children: [
                _buttonMenu("Ver frutas", const Color(0xFF9D7C3C), () {}),
                _buttonMenu("Contactenos", const Color(0xFF3DA875), () {}),
              ],
            )),
        const Spacer(
          flex: 1,
        )
      ],
    );
  }

  Widget _buttonMenu(String text, Color? color, Function()? onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(Size(250, 60)),
            backgroundColor: MaterialStatePropertyAll(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  BoxDecoration _decorationBackground() {
    return const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "fondo_home.jpg",
            ),
            fit: BoxFit.cover));
  }
}
