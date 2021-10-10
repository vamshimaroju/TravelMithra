
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:travel_mitra/components/custom_button.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>HomePageState();

}

class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    // print (title);
    return Scaffold(
      appBar: AppBar(title:Text("Travel Mitra")),
      body:  Center(child: _menuList(),),
    );
  }

  Widget _menuList(){
    
    // final menuJson = json.decode(_getMenuList());

    List menuList = _getMenuList();

    List<Widget> btnColumns= [];

    menuList.forEach((btnDtls){
      print (btnDtls["btnText"]);
      btnColumns.add(CustomElevatedBtn(btnText: btnDtls["btnText"], btnFunction: _getBtnFunction(btnDtls["btnFunction"])));
    });

    

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical:5.0),
      child: Column(
        
        children: btnColumns,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,

      ),
      // child: Text("Hellow"),
    );
  }


// Custom function for the button execution while pressed on the screen

Object _getBtnFunction(functionType){

    if(functionType == "trainFunction")
      return ()=>_btnFunction("train");
    else if(functionType == "busFunction")
      return ()=>_btnFunction("bus");
    else 
      return ()=>_btnFunction("auto");
}

void _btnFunction(args){
  print(args);
}


// buttons list
  List _getMenuList(){

     var  menuList = [
       { 
         "btnText":"Train",
         "btnFunction":"trainFunction"
       },
       {
         "btnText":"Bus",
         "btnFunction":"busFunction"
       },
       {
         "btnText":"Auto",
         "btnFunction":"AutoFunction"
       }
         ];
    return menuList;
  }

}


// class BtnDtls{
//   BtnDtls({required this.btnText,required this.btnFunction});

//   String btnText,btnFunction;
  
//   factory BtnDtls.fromJson(Map<String,dynamic>){

//   }

// }