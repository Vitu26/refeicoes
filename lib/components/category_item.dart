import 'package:flutter/material.dart';
import 'package:refeicoes/models/category.dart';
import 'package:refeicoes/utils/app_routes.dart';


class CategoryItem extends StatelessWidget {
  
  //recebendo uma categoria como parametro
  final Category category;
  //construtor que recebe uma categoria
  const CategoryItem({super.key, required this.category});

  //metodo para rotas
  void _selectCategory(BuildContext context){
    //usando rotas dinamicas
    // Navigator.push(context,
    //   MaterialPageRoute(builder: (context) => CategoysMealsScrem()));
    // Navigator.of(context).push(MaterialPageRoute(builder: (_){
    //   return CategorysMealsScrem(category: category);
    // },));

    //usando rotas nomeadas
    //chamada para rota nomeada
    Navigator.of(context).pushNamed(AppRoutes.CATEGORIES_MEALS, arguments: category);
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      // (){
      //   Navigator.push(context, 
      //     MaterialPageRoute(
      //       builder: (context) => CategoysMealsScrem()
      //     )
      //   );
      // },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Text(category.title, style: Theme.of(context).textTheme.titleMedium,),
      ),
    );
  }
}