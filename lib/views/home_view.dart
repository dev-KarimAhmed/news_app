import 'package:flutter/material.dart';

import '../widgets/categorie_listview.dart';
import '../widgets/custom_categorie_card.dart';
import '../widgets/news_listview.dart';
import '../widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategorieListView(),),
            SliverToBoxAdapter(child: SizedBox(
              height: 32,
            ),),
             NewsListView(),
          ],
        ),
      ),
    );
  }
}

