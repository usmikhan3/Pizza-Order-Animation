import 'package:flutter/material.dart';

class Ingredient {
  final String  image;
  final List<Offset> positions;
  final String imageUnit;
  Ingredient(this.image, this.imageUnit,this.positions);

  bool compare(Ingredient ingredient) => ingredient.image == image;
}

final ingredients = <Ingredient>[
  Ingredient(
      'assets/images/chili.png',
      'assets/images/chili_unit.png',
      <Offset>[
    const Offset(0.2, 0.2),
    const Offset(0.6, 0.2),
    const Offset(0.4, 0.25),
    const Offset(0.5, 0.3),
    const Offset(0.4, 0.65),
  ]),
  Ingredient(
      'assets/images/mushroom.png',
      'assets/images/mushroom_unit.png',
      <Offset>[
    const Offset(0.2, 0.35),
    const Offset(0.65, 0.35),
    const Offset(0.3, 0.23),
    const Offset(0.5, 0.2),
    const Offset(0.3, 0.5),
  ]),
  Ingredient(
      'assets/images/olive.png',
      'assets/images/olive_unit.png',
      <Offset>[
    const Offset(0.25, 0.5),
    const Offset(0.4, 0.4),
    const Offset(0.2, 0.3),
    const Offset(0.4, 0.2),
    const Offset(0.2, 0.45),
  ]),
  Ingredient(
      'assets/images/onion.png',
      'assets/images/onion.png',
      <Offset>[
    const Offset(0.2, 0.65),
    const Offset(0.65, 0.3),
    const Offset(0.25, 0.25),
    const Offset(0.45, 0.35),
    const Offset(0.4, 0.65),
  ]),
  Ingredient(
      'assets/images/pea.png',
      'assets/images/pea_unit.png',
      <Offset>[
    const Offset(0.2, 0.35),
    const Offset(0.65, 0.35),
    const Offset(0.3, 0.23),
    const Offset(0.5, 0.2),
    const Offset(0.3, 0.5),
  ]),
  Ingredient(
      'assets/images/pickle.png',
      'assets/images/pickle_unit.png',
      <Offset>[
    const Offset(0.2, 0.65),
    const Offset(0.65, 0.3),
    const Offset(0.25, 0.25),
    const Offset(0.45, 0.35),
    const Offset(0.4, 0.65),
  ]),
  Ingredient(
      'assets/images/potato.png',
      'assets/images/potato_unit.png',
      <Offset>[
    const Offset(0.2, 0.2),
    const Offset(0.6, 0.2),
    const Offset(0.4, 0.25),
    const Offset(0.5, 0.3),
    const Offset(0.4, 0.65),
  ]),
];
