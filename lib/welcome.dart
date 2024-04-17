import 'package:flutter/material.dart';
import 'package:savaa/HomeScreen.dart';
import 'package:savaa/buy.dart';
import 'package:savaa/rent.dart';
import 'package:savaa/sold.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bulidingbackground.jpg'),
          fit: BoxFit.cover
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Container(

                  child: const AnimatedSize(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: Duration(milliseconds: 1000),
                    child: Card(child: Text('What you want?')),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: TextButton(
                style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20),backgroundColor: Colors.blue,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => buy(title: "Buy")));
                },
                child: Text("Buy",style: TextStyle(color: Colors.black),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: TextButton(
                style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20),backgroundColor: Colors.blue,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => rent(title: "rent")));
                  },
                  child: Text("Rent",style: TextStyle(color: Colors.black),),
            ),
            ),
          ],


        ),

      ),

    );
  }
}
