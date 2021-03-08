import 'package:flutter/material.dart';
import 'package:flutter_manager/pages/start.page.dart';

void main() {
  runApp(StorageManager());
}

class StorageManager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storage Manager',
      routes: {
        'start': (context)=> StartPage(),
        // 'home': (context)=> HomePage()
      }
    );
  }
}
