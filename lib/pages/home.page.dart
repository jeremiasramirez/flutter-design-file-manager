import 'package:flutter/material.dart';

import 'package:flutter_manager/widgets/banner-home.widget.dart';
import 'package:flutter_manager/widgets/safe.widget.dart';

 
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            
            Safe(BannerHome())

          ],
        )
      )
    );
  }
}

