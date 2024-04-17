import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class contactus extends StatefulWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
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
      body:Container(



      ),
    );
  }
}
