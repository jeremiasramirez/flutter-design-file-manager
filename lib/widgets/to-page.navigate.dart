import 'package:flutter/material.dart';

void goToPage(BuildContext context, String route) {
  Future.delayed(Duration(milliseconds: 1), () {
    return true;
  }).then((bool value) {
    if (value) Navigator.pushReplacementNamed(context, 'home');
  });
}
