
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'Bottomnevigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png',height: 40.0,),
        centerTitle: true,
        flexibleSpace: Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    colors: [Color(0xFF3366FF),Color(0xFF00CCFF)],
      begin: Alignment.topRight,
      end: Alignment.bottomCenter,
    ),
    ),
        ),
    ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00CCFF),Color(0xFFFFFFFF)],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(

              bottomNavigationBar: Bottomnev(),

          ),
      ),

    );
  }
}
