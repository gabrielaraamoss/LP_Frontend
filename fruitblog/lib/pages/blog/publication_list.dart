import 'package:flutter/material.dart';
import 'package:fruitblog/models/publication_model.dart';
import 'package:fruitblog/pages/blog/publication_item.dart';
import 'package:fruitblog/api_service.dart';

class PublicationList extends StatefulWidget {
  const PublicationList({Key? key}) : super(key: key);

  @override
  _PublicationListState createState() => _PublicationListState();
}

class _PublicationListState extends State<PublicationList> {
  List<PublicationModel> publications =
      List<PublicationModel>.empty(growable: true);

  void initState() {
    loadPublications();
  }

  @override
  Widget build(BuildContext context) {
    return loadPublications();
  }

  Widget publicationList(publications) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: publications.length,
      itemBuilder: (context, index) {
        return PublicationItem(
          model: publications[index],
          onDelete: (PublicationModel model) {},
        );
      },
    );
  }

  Widget loadPublications() {
    return FutureBuilder(
        future: APIService.getPublications(),
        builder: (
          BuildContext context,
          AsyncSnapshot<List<PublicationModel>?> model,
        ) {
          if (model.hasData) {
            return publicationList(model.data);
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}
