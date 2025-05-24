import 'package:flutter/material.dart';
import 'package:news_app/category/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Globe',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView(),),
            SliverToBoxAdapter(child: SizedBox(height: 16,),),
            NewsListViewBuilder(category: 'top',),
          ],
        ),
        
      )
    );
  }
}



