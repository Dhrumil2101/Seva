import 'package:flutter/material.dart';
import 'package:savaa/HomeScreen.dart';
import 'package:savaa/welcome.dart';



class DecoratedBoxTransitionExample extends StatefulWidget {

  @override
  State<DecoratedBoxTransitionExample> createState() =>
      _DecoratedBoxTransitionExampleState();
}


class _DecoratedBoxTransitionExampleState
    extends State<DecoratedBoxTransitionExample> with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        ),
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
      // No shadow.
    ),
  );

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBoxTransition(
              decoration: decorationTween.animate(_controller),
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                  },
                  child: Image.asset('assets/logo.png',width: 10,height: 10,),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            // DecoratedBoxTransition(
              // decoration: decorationTween.animate(_controller),
               Container(
                color: null,
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Welcome()));
                  },
                  child: Image.asset('assets/images.jpeg',width: 10,height: 10,),
                ),
              ),
            // ),
          ],
        ),
      ),
    );
  }
}
