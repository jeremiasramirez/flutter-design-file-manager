import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/to-page.navigate.dart';

class StartWidgetPage extends StatelessWidget {
  Widget build(context) {
    return Container(
      height: 290.0,
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
      child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: AssetImage('assets/folder_start.png')),
      decoration: BoxDecoration(),
    );
  }

  Widget titleStart() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 20),
        child: Text('Organize your files at\n one place!',
            style: TextStyle(
                color: Color.fromRGBO(10, 1, 100, 1),
                fontWeight: FontWeight.bold,
                fontSize: 35)));
  }

  Widget descriptionStart() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 50),
        child: Text(
            'A file manager or file browser is a computer program\n  that provides a user interface to manage files and \n  folders',
            style: TextStyle(
                color: Colors.grey[500],
                fontWeight: FontWeight.w400,
                fontSize: 17)));
  }

  Widget goHome(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 210,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FlatButton(
              // minWidth: 10,

              height: 60,
              color: Color.fromRGBO(10, 1, 200, 1),
              onPressed: () => goToPage(context, 'home'),
              child: Icon(
                Icons.login,
                size: 26,
                color: Colors.white,
              )),
        ));
  }
}
