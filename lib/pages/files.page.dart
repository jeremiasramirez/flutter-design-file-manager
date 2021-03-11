import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/banner-file.widget.dart';
import 'package:flutter_manager/widgets/folders.widget.dart';
import 'package:flutter_manager/widgets/leading-title.widget.dart';
 
class FilesPage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          physics:BouncingScrollPhysics(),
          
          children: [

            BannerFile(),
            LeadingTitle(),
            FolderFiles()

          ],

        )
      )
    );
  }
}


