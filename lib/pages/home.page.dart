import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_manager/widgets/banner-home.widget.dart';
import 'package:flutter_manager/widgets/cloud-items.widget.dart';
import 'package:flutter_manager/widgets/list-items-cloud.widget.dart';
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
          children:  listItemsCloud(context)
        )
      )
    );
  }
}











