import 'package:flutter/material.dart';

void goToPage(BuildContext context, String route){

    Future.delayed(Duration(milliseconds: 10), (){
      return true;
    }).then((bool value){
      if(value) Navigator.pushNamed(context, 'home');
    });
 
}