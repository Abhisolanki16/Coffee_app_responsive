import 'package:flutter/material.dart';
import 'package:responsive_app/Responsive/desktop_body.dart';
import 'package:responsive_app/Responsive/mobile_body.dart';
import 'package:responsive_app/Responsive/responsive_layout.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResposiveLayout(desktopBody: DesktopBody(),mobileBody: MobileBody()),
    );
  }
}
