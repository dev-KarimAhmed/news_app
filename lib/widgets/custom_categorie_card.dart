import 'package:flutter/material.dart';

class CategorieCard extends StatelessWidget {
  const CategorieCard({
    super.key,
  });

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
              image: AssetImage('assets/technology.jpeg'), fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            'Technology',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
