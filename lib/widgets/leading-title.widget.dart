import 'package:flutter/material.dart';


class LeadingTitle extends StatelessWidget{

  Widget build(context){
    return Container(
      margin:EdgeInsets.only(left:12, right:12,bottom:12, top:22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          this.titleLeading(),
          this.more()
        ],

      )
    );

  }
  Widget titleLeading(){
    return Text(
      "My Files",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color:Colors.grey[700],
        fontSize:16
      )
    );
  }

  Widget more(){
    return Icon(Icons.more_horiz,size:28, color:Colors.grey[500]);
  }
}
