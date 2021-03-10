import 'package:flutter/material.dart';

import 'package:flutter_manager/widgets/banner-home.widget.dart';
import 'package:flutter_manager/widgets/cloud-items.widget.dart';
import 'package:flutter_manager/widgets/safe.widget.dart';
import 'package:flutter_manager/widgets/separated.widget.dart';

 
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(


        backgroundColor: Colors.white,
        body: ListView(

          physics:BouncingScrollPhysics(),
          children:  [  
            
            Safe(BannerHome()),
            Separated(0, 30),
           
            Safe(GestureDetector(
              onTap: (){
                 
              },
              child: CloudItems(
              "iCloud",
              "64% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/dropbox-6078127_640.png"
            ))),

            Safe(GestureDetector(
              onTap: (){
                
              },
              child: CloudItems(
              "Google Drive",
              "80% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/drives-6078126_640.png"
            ))),

            Safe(GestureDetector(
              onTap: (){
                
              },
              child: CloudItems(
              "Dropbox",
              "10% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/dropbox-6078125_640.png"
            ))),

            Safe(GestureDetector(
              onTap: (){
                
              },
              child: CloudItems(
              "Mega",
              "50% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/mega-6078120_640.png"
            ))),



          ]
        )
      )
    );
  }
}











