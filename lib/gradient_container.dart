import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color startColor;
  final Color endColor;

  const GradientContainer(this.startColor, this.endColor, {super.key});

  void rollDice() {
    print("Dice rolled");
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-2.png",
              width: 200,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 30)),
                child: const Text("Roll Dice"))
          ],
        ),
      ),
    );
  }
}
