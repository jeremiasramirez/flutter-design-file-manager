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
            Safe(StartWidgetPage().titleStart()),
            Safe(StartWidgetPage().descriptionStart()),
            Safe(StartWidgetPage().goHome(context))
            

          ],
        )
      )

    );
  }
}









