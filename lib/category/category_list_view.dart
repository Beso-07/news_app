import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(categoryImage: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(categoryImage: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(categoryImage: 'assets/technology.jpg', categoryName: 'Technology'),
    CategoryModel(categoryImage: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(categoryImage: 'assets/science.jpg', categoryName: 'Science'),
    
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(), // بيتخلي الليست بتمط 
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.only(right: 6),
            child: CategoryCard(
              category: categories[index],
            ),
          );
        }),
    );
  }
}
