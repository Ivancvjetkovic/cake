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

class _OutLinedButtonState extends State<OutLinedButton> {
  var _value;

 




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
                                     
                     for(index;index<4;index++){
                      index ;
                     }


              });
              },
            ),
          );
        },
      ).toList(),
    );}}


   