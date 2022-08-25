import 'package:flutter/material.dart';


class PizzaCartButton extends StatefulWidget {
  final VoidCallback onTap;
  const PizzaCartButton({Key? key, required this.onTap}) : super(key: key);

  @override
  State<PizzaCartButton> createState() => _PizzaCartButtonState();
}

class _PizzaCartButtonState extends State<PizzaCartButton>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
      reverseDuration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController!.dispose();
  }

  Future<void> _animateButton() async {
    await _animationController!.forward(from: 0.0);
    await _animationController!.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        _animateButton();
      },
      child: AnimatedBuilder(
        animation: _animationController!,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.orange.withOpacity(0.7), Colors.orange]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 4.0),
                  spreadRadius: 4.0,
                )
              ]),
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
        builder: (context, child) {
          return Transform.scale(
            scale: (1 - _animationController!.value).clamp(0.0, 1.0),
            child: child!,
          );
        },
      ),
    );
  }
}