import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';

int currentIndex = 0;
class Button extends StatefulWidget {
  @override
  State<Button> createState() => _ButtonState();
}
class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(Icons.add),
          color: Colors.white,
          iconSize: 25,
          onPressed: () {
            setState(() {
              currentIndex = currentIndex + 1;
              if (currentIndex > 15) {
                currentIndex = 15;
              }
            });
          },
        ),
        Text(
          '$currentIndex',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        IconButton(
          icon: const Icon(Icons.remove),
          color: Colors.white,
          iconSize: 25,
          onPressed: () {
            setState(() {
              currentIndex = currentIndex - 1;
              if (currentIndex < 0) {
                currentIndex = 0;
              }
            });
          },
        ),
        SizedBox(height: 75),
        Price(currentIndex: currentIndex),
      ],
    );
  }
}
class Price extends StatelessWidget {
  final int currentIndex;
  const Price({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double currentPrice = 24;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '\$${currentPrice * currentIndex}',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}
















