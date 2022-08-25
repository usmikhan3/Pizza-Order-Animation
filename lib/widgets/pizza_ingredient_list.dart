import 'package:flutter/material.dart';
import 'package:pizzademo/provider/pizza_order_bloc.dart';
import 'package:pizzademo/provider/pizza_order_provider.dart';
import 'package:pizzademo/views/ingredient.dart';
import 'package:pizzademo/widgets/pizza_ingredient_item.dart';


class PizzaIngredients extends StatelessWidget {
  const PizzaIngredients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = PizzaOrderProvider.of(context);
    return ValueListenableBuilder(
      valueListenable: bloc.notifierTotal,
      builder: (context,value ,_) {
        final list = bloc.listIngredients;
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ingredients.length,
            itemBuilder: (context, index) {
              final ingredient = ingredients[index];
              return PizzaIngredientItem(
                ingredient: ingredient,
                exist:bloc.containsIngredient(ingredient),
                onTap: (){
                  bloc.removeIngredient(ingredient);
                },
              );
            });
      }
    );
  }
}



const itemSIze = 45.0;

class PizzaIngredientItem extends StatelessWidget {
  final Ingredient ingredient;
  final bool exist;
  final VoidCallback onTap;

  const PizzaIngredientItem({Key? key, required this.ingredient,required this.exist,required  this.onTap})
      : super(key: key);



  Widget _buildChild({bool withImage = true}){
   return GestureDetector(
     onTap:exist ?  onTap : null,
     child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Container(
          height: itemSIze,
          width: itemSIze,
          decoration:  BoxDecoration(
            color:Color(0xFFF5EED3),
            shape: BoxShape.circle,
            border:exist ?  Border.all(color: Colors.red,width: 2) : null
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child:withImage ?  Image.asset(
              ingredient.image,
              fit: BoxFit.contain,
            ) : SizedBox.fromSize(),
          ),
        ),
      ),
   );
  }

  @override
  Widget build(BuildContext context) {
    /*final child = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: itemSIze,
        width: itemSIze,
        decoration: const BoxDecoration(
          color: Color(0xFFF5EED3),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            ingredient.image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );*/
    return Center(
      child:exist ? _buildChild() : Draggable(
        feedback: DecoratedBox(
          decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 5.0),
              spreadRadius: 5,
            )
          ]),
          child: _buildChild(),
        ),
        data: ingredient,
        child: _buildChild(),
      ),
    );
  }
}
