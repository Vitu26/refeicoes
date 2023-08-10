import 'package:flutter/material.dart';
import 'package:refeicoes/screens/meal_detail_screem.dart';
import 'screens/category_screem.dart';
import 'screens/category_meals_screem.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vamos cozinhar!',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondesed',
          )
        )

      ),
      // home: CategoryScreem(),
      //rotas nomeadas
      routes: {
        AppRoutes.HOME: (ctx) => CategoryScreem(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategorysMealsScrem(),
        AppRoutes.MEALS_DETAILS: (ctx) => MealDetailScreen()
      },
      //metodo para criar rotas dinamicas
      // onGenerateRoute: (settings){
      //   if(settings.name == '/alguma-coisa'){
      //     return null;
      //   }else if(settings.name == '/outra-coisa'){
      //     return null;
      //   }else{
      //     return MaterialPageRoute(builder: (_){return CategoryScreem();});
      //   }
      // },
      // //metodo para quando a rota não é encontrada
      // onUnknownRoute: (settigs) {
      //   return MaterialPageRoute(
      //     builder: (_){
      //       return CategoryScreem();
      //     }
      //   );
      // },
    );
  }
}
