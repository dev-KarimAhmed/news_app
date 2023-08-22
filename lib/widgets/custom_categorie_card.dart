import 'package:flutter/material.dart';

import '../models/categorie_model.dart';

class CategorieCard extends StatelessWidget {
  const CategorieCard({
    super.key,
    required this.categorieModel,
  });
 final CategorieModel categorieModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 95,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(categorieModel.image), fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            categorieModel.categorieName,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
