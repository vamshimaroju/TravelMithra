import 'package:flutter/material.dart';
import 'package:travel_mitra/pages/route_page.dart';

class BtnFunction {

  void trainPageFn(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> RoutePage()));
  }
}