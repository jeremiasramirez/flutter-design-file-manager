import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/separated.widget.dart';

class BannerFile extends StatelessWidget{
  
  Widget build(context){
    return Container(
      height: 320,
      padding:EdgeInsets.only(left:15,right:15,top:15),
      decoration:BoxDecoration(

        color:Colors.blue[900],
        
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)
        )

      ),
      child:Column(
        
        children: [

          this.barHome(),
          Separated(0,18),
          this.imageForBannerFile(),
          this.routeFakeBanner()
          

        ]

    ));

  }

  Row barHome(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        this.titleFilePage(),
        this.iconConfig()

    ]);


  }
  Container imageForBannerFile(){
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 115,
      child: FadeInImage(
        height:100,
        placeholder: AssetImage('assets/loading-2.gif'),
        image: NetworkImage('https://cdn.pixabay.com/photo/2021/03/08/04/45/statistics-6078124_640.png'),
       )
    );
  }

  Container titleFilePage(){

    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 10,left:5),
      child: Text(
        'Storage Detail',
        style:TextStyle(
          fontWeight: FontWeight.w500,
          color:Colors.white,
          fontSize: 30
        )
      )


    );

  }
 
  Icon iconConfig()=> Icon(Icons.settings_sharp, color:Colors.white,size:30); 
  

   Widget routeFakeBanner(){

    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(top: 54),
      height: 65,
      width: 250,
      padding:EdgeInsets.only(bottom:0, top:18, left:18,right: 18),
      decoration:BoxDecoration(
        
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        
        color:Colors.white.withOpacity(1)
      ),
      child: Row( 

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          
          this.columnBySpace(
            [
              this.titleSpaced("Total Space"),
              Separated(0, 14.0),
              this.sizeSpace("250 GB")
            ]
          ),
          this.columnBySpace(
            [
              this.titleSpaced("Used"),
              Separated(0, 14.0),
              this.sizeSpace("186 GB")
            ]
          )
          
          
 
        ],
      ),


    );

  }
  Column columnBySpace(List<Widget> widgets){
    return Column(
    
      children: [
        widgets[0],
        widgets[1],
        widgets[2]
      ]
    
    );

  }

  Text titleSpaced(String name){
    return Text(
            name,
             style:TextStyle(
               fontSize: 14,
               color:Colors.grey[600],
               fontWeight: FontWeight.bold
              )
          );
  }

  Widget sizeSpace(String sizes){
    return Text(
            sizes,
             style:TextStyle(
               fontSize: 21,
               color:Color.fromRGBO(10, 30, 120, 1),
               fontWeight: FontWeight.w900
              )
          );
  }
}


