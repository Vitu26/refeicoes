import 'package:flutter/material.dart';
import '../models/category.dart';

class CategorysMealsScrem extends StatelessWidget {

  //para passar dados via construtor
  // final Category category;

  // const CategorysMealsScrem({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por categorias ${category.id}'),
      ),
    );
  }
}