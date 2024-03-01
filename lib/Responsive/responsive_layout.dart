import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResposiveLayout({required this.desktopBody, required this.mobileBody});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < 600){
        return mobileBody;
      }else {
        return desktopBody;
      }
    },);
  }
}

