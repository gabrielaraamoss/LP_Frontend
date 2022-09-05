import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoZone extends StatelessWidget {
  const InfoZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        decoration: _decorationBackground(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  "¿Sabías que.....",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 350,
                child: Text(
                  "como alimento, las frutas realizan aportes a la dieta que son de suma importancia para la salud humana?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
      ),
    );
  }

  BoxDecoration _decorationBackground() {
    return const BoxDecoration(
      color: Colors.white,
      image: DecorationImage(
        image: AssetImage(
          "splash.jpg",
        ),
      ),
    );
  }
}
