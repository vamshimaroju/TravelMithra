import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget{

const CustomElevatedBtn({Key? key,required this.btnText, required this.btnFunction}):super(key: key);

final String btnText;
final  btnFunction;
  @override
  Widget build(BuildContext context) {
     return ElevatedButton(
        style : ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          onPrimary: Colors.purple.shade100
        ),
        child:  Text(btnText),
        onPressed: btnFunction,
      );
  }
}