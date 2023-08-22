import 'package:flutter/material.dart';

import 'custom_categorie_card.dart';

class CategorieListView extends StatelessWidget {
  const CategorieListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: ((context, index) {
            return CategorieCard();
          })),
    );
  }
}
