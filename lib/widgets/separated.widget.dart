import 'package:flutter/material.dart'; 


class Separated extends StatelessWidget{

  double height=0,width=0;

  Separated(this.width, this.height);

  Widget build(context){
    
    return SizedBox( 
    
      width: this.width,
      height: this.height
     
    );
  }
}