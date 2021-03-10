import 'package:flutter/material.dart';

import 'package:flutter_manager/widgets/safe.widget.dart';
import 'package:flutter_manager/widgets/start.widgets.dart';

 
class StartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [

            Safe(StartWidgetPage()),
            StartWidgetPage().titleStart(),
            StartWidgetPage().descriptionStart(),
            StartWidgetPage().goHome(context)
            

          ],
        )
      )

    );
  }
}









