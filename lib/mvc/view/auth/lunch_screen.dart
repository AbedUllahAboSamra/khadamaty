

import 'package:flutter/material.dart';

class LunchScreen extends StatelessWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          height: double.infinity,
          width: double.infinity,
          child:  const Image(image: AssetImage('assets/images/lunchimage.png')),
        ),
      ),
    );
  }
}
