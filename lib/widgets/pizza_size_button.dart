import 'package:flutter/material.dart';

class PizzaSizeButton extends StatelessWidget {
  final bool selected;
  final String text;
  final VoidCallback onTap;

  const PizzaSizeButton({
    Key? key,
    required this.selected,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: selected
                ? [
              const BoxShadow(
                  spreadRadius: 2.0,
                  color: Colors.black12,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 10.0),
            ]
                : null),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.brown,
                fontWeight: selected ? FontWeight.bold : FontWeight.w300),
          ),
        ),
      ),
    );
  }
}