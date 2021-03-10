import 'package:flutter/material.dart';
import 'package:flutter_manager/pages/files.page.dart';

import 'package:flutter_manager/pages/home.page.dart';
import 'package:flutter_manager/pages/start.page.dart';

void main() {
  runApp(StorageManager());
}

class StorageManager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      color: Colors.blue[900],
      debugShowCheckedModeBanner: false,
      title: 'Storage Manager',
      initialRoute: 'start',

      routes: {
        'start': (context)  => StartPage(),
        'home': (context)   => HomePage(),
        'home/files': (context)  => FilesPage()
      }

    );
  }
}
