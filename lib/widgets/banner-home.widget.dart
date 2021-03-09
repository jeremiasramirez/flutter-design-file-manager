import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/separated.widget.dart';

class BannerHome extends StatelessWidget{
  
  Widget build(context){
    return Container(
      height: 250,
      padding:EdgeInsets.all(15),
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
          this.titleBanner(),
          this.descriptionBanner()


        ]

    ));


  }

  Row barHome(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Icon(Icons.dashboard_customize,size:28, color:Colors.white),
        this.avatar()

    ]);


  }
 
  Row avatar(){
    return Row(
      children: [

        Icon(Icons.search, color:Colors.white,size:30),
        Separated(20,0),

        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image:NetworkImage('https://electronicssoftware.net/wp-content/uploads/user.png'))
        )

      ],
    );
  }

  Widget titleBanner(){

    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 30,left:10),
      child: Text(
        'Hello Jeremias,',
        style:TextStyle(
          fontWeight: FontWeight.w500,
          color:Colors.white,
          fontSize: 30
        )
      )


    );


  }
  Widget descriptionBanner(){

    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 15,left:10),
      child: Text(
        'Welcome back to file management!',
        style:TextStyle(
          fontWeight: FontWeight.w400,
          color:Colors.white,
          fontSize: 20
        )
      )


    );


  }

}


