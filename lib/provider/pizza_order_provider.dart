import 'package:flutter/cupertino.dart';
import 'package:pizzademo/provider/pizza_order_bloc.dart';

class PizzaOrderProvider extends InheritedWidget{


  final PizzaOrderBloc bloc;
  final Widget child;

  PizzaOrderProvider({required this.bloc,required this.child}) : super(child: child);


  static PizzaOrderBloc of(BuildContext context) => context.findAncestorWidgetOfExactType<PizzaOrderProvider>()!.bloc;



  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>true;
}