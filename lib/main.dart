
import 'package:flutter/material.dart';
import 'package:flutter_firsttest/buttons/elevated_button_class.dart';
import 'package:flutter_firsttest/buttons/pages/home_page.dart';
import 'package:flutter_firsttest/screen1.dart';
void main() {
runApp(Azz());


}

class Azz extends StatelessWidget {
  const Azz({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }


}