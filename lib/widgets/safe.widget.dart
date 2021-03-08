import 'package:flutter/material.dart';

 
class Safe extends StatelessWidget {
  
  Widget safe;
  Safe(this.safe);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: this.safe
    );
  }
}
