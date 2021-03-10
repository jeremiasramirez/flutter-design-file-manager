import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/safe.widget.dart';
import 'package:flutter_manager/widgets/separated.widget.dart';

import 'banner-home.widget.dart';
import 'cloud-items.widget.dart';

List<Widget> listItemsCloud(BuildContext context){
  return [  
            
            Safe(BannerHome()),

            Separated(0, 30),
           
            Safe(GestureDetector(
              onTap: (){
                 Navigator.pushNamed(context,'home/files');
              },
              child: CloudItems(
              "iCloud",
              "64% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/dropbox-6078127_640.png"
            ))),


            Safe(GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'home/files');
              },
              child: CloudItems(
              "Google Drive",
              "80% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/drives-6078126_640.png"
            ))),


            Safe(GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'home/files');
              },
              child: CloudItems(
              "Dropbox",
              "10% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/dropbox-6078125_640.png"
            ))),


            Safe(GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'home/files');
              },
              child: CloudItems(
              "Mega",
              "50% available",
              "https://cdn.pixabay.com/photo/2021/03/08/04/45/mega-6078120_640.png"
            ))),

          ];
}