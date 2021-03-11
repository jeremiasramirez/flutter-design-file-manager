import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/safe.widget.dart';


class CloudItems extends StatelessWidget{

  String title;
  String storage;
  String urlImage;

 
  CloudItems(this.title, this.storage, this.urlImage);
   
  Widget build(BuildContext context){

    return Container(
      
      margin:EdgeInsets.only(top: 10,left:10,right: 10,bottom:0),
      padding:EdgeInsets.only(left: 20),
      height: 125,
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Safe(cloudImage()),
          
          itemDescription(),

          Icon(Icons.more_vert_outlined, size:30, color:Colors.grey[500])


        ],
      ),
      decoration:BoxDecoration(

        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(23)

      )


    ); 

  }

  Column itemDescription(){
   
    return Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          this.cloudTitle(true, this.title),
          this.cloudTitle(false, this.storage)
      ]

    );
  }

  Container cloudTitle(bool isTitle, String title){
    
    if(isTitle){
      
      return Container( 
        child: Text(
          title+'\t\t\t\t\t\t\t',
          style:TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 28,
            color:Colors.blue[900]
          )
        )
      );

    }
    else{
      return Container( 
        margin:EdgeInsets.only(top:15),
        child: Text(
          title+'\t\t\t\t\t\t\t',
          style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color:Colors.grey[500]
          )
        )
      );
    }
  }
  FadeInImage cloudImage(){
    
    return FadeInImage(
      width: 65,
      placeholder: AssetImage('assets/loading-2.gif'),
      image:NetworkImage(this.urlImage)
    );

  }
}
