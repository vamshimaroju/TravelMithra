import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class RoutePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>RoutePageState();  
}

class RoutePageState extends State<RoutePage>{

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
              decoration:  InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter Start location"
              )
            ) ,
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              child: TextField(
              decoration:  InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter Destination location"
              ),
            ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              child: ElevatedButton(
                onPressed: _submitForm,
                child: Text("Submit")
                ),
            )    
          ],
        ),
      )
    );
  }

  _submitForm(){
    print("in submitForm");
    print(_formKey.currentState);
    if(_formKey.currentState!.validate()){
      print("inside if condition");
      return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Processing Data"))
      );
    }
  }
  
  _validateFields(String fieldName, String? value){
    print("value $value");
    var bolval = value == null || value.isEmpty;
    developer.log("condition $bolval");
    if(value == null || value.isEmpty){
      return "Please enter $fieldName location";
    }
    return null;
  }
}