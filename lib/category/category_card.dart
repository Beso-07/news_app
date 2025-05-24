import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryPage(category: category.categoryName,);

        }));  
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0 , top: 10),
        child: Container(
          height: 100,
          width: 175,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.categoryImage),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
