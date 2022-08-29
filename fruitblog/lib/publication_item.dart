import 'package:flutter/material.dart';
import 'package:fruitblog/models/publication_model.dart';
import 'package:google_fonts/google_fonts.dart';

class PublicationItem extends StatelessWidget {
  const PublicationItem({Key? key, this.model, this.onDelete})
      : super(key: key);

  final PublicationModel? model;
  final Function? onDelete;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(
            color: const Color.fromARGB(255, 170, 216, 216),
            height: 250,
            width: 500,
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 15, 0),
                      child: CircleAvatar(
                        minRadius: 10,
                        maxRadius: 30,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/1625/1625048.png'),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 50, 0),
                        child: Container(
                          width: 250,
                          child: Text(model!.name!,
                              style: GoogleFonts.lato(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                              )),
                        )),
                    Material(
                      color: const Color.fromARGB(255, 170, 216, 216),
                      child: IconButton(
                        tooltip: "Eliminar publicación",
                        icon: const Icon(
                          Icons.delete,
                          size: 30,
                          color: Color.fromARGB(255, 121, 119, 119),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: Center(
                        child: Container(
                  color: const Color.fromARGB(255, 205, 186, 216),
                  width: 300,
                  height: 100,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text("${model!.publication}",
                          style: TextStyle(
                              color: Color.fromARGB(199, 3, 3, 3),
                              decoration: TextDecoration.none,
                              fontSize: 15))),
                )))
              ],
            )),
        const SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
