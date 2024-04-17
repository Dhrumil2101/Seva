import 'dart:ffi';
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:savaa/HomeScreen.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(seconds: 5),() {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context)=> HomeScreen(

            )));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Image(image: AssetImage('assets/logo.png'),)
      ),
    );
  }
}

// @override
//   Widget build(BuildContext context) {
//
//     return SplashScreen(
//       seconds: 5,
//       navigateAfterSeconds: HomeScreen(),
//       backgroundColor: Colors.lightBlue,
//       image:Image.network(
//               'https://savaaproperties.com.au/wp-content/uploads/elementor/thumbs/blue-logo-pnou33tdn41dy1n4msrxg98maairujt4401ro5gp3u.png'),
//         ),
//       loadingText: const Text("Loading"),
//       photoSize: 200.0,
//       loaderColor: Colors.red,
//     );
//   }
// }