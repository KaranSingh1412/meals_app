import 'package:flutter/material.dart';
import 'package:meals_app/model/meals.dart';
import 'package:meals_app/widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favMeals;

  const FavoriteScreen({Key key, this.favMeals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(favMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: favMeals[index].id,
            title: favMeals[index].title,
            imgUrl: favMeals[index].imgUrl,
            duration: favMeals[index].duration,
            difficulty: favMeals[index].difficulty,
            affordability: favMeals[index].affordability,
          );
        },
        itemCount: favMeals.length,
      );
    }
  }
}
