import 'package:flutter/material.dart';

import '../models/categorie_model.dart';
import 'custom_categorie_card.dart';

class CategorieListView extends StatelessWidget {
  const CategorieListView({
    super.key,
  });
  final List<CategorieModel> categorieList = const[
    CategorieModel(image: 'assets/business.jpg', categorieName: 'Business'),
    CategorieModel(image: 'assets/entertainment.jpg', categorieName: 'Entertainment'),
    CategorieModel(image: 'assets/general.jpg', categorieName: 'General'),
    CategorieModel(image: 'assets/health.jpg', categorieName: 'Health'),
    CategorieModel(image: 'assets/science.jpg', categorieName: 'Science'),
    CategorieModel(image: 'assets/technology.jpeg', categorieName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorieList.length,
          itemBuilder: ((context, index) {
            return CategorieCard(categorieModel: categorieList[index],);
          })),
    );
  }
}
