import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import '../main.dart';
import '../screen/second_screen.dart';

class OutLinedButton extends StatefulWidget {
  OutLinedButton({super.key});

  @override
  State<OutLinedButton> createState() => _OutLinedButtonState();
}

final List<bool> kilograms = <bool>[true, false, false, true];

class _OutLinedButtonState extends State<OutLinedButton> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List<Widget>.generate(
        4,
        (int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ChoiceChip(
              backgroundColor: Colors.grey,
              selectedColor: Colors.green,
              
              label: Text('${index + 1} KG'),
              selected: _value == index,
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? index : null;
                });
              },
            ),
          );
        },
      ).toList(),
    );
  }
}

    // ignore: dead_code
   
  
