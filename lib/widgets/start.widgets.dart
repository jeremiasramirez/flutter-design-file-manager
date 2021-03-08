import 'package:flutter/material.dart';


class StartWidgetPage extends StatelessWidget{

  Widget build(context){

    return Container(
      height: 296.0,
      margin: EdgeInsets.only(top: 15, left:15, right:15, bottom:20),
      child: FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage('https://cdn.pixabay.com/photo/2021/03/08/04/45/app-6078128_960_720.png')
      ),
      decoration: BoxDecoration(  
      ),


    );



  }



}