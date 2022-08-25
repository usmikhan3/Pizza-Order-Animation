import 'package:flutter/material.dart';
import 'package:pizzademo/views/main_pizza_order.dart';
import 'package:pizzademo/views/pizza_order_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MainPizzaOrder(),
    );
  }
}

