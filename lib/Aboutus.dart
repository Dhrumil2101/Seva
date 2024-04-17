import 'package:flutter/material.dart';
import 'package:savaa/Ourprofile.dart';
import 'ourteam.dart';


class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
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
        padding: EdgeInsets.all(10),
        color: Color(0xFF00CCFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ourprofile()));
                },
                    child: Text("Our Profile",style: TextStyle(color: Colors.black,fontSize: 20),),
                ),

              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ourteam()));
                },
                  child: Text("Our Team",style: TextStyle(color: Colors.black,fontSize: 20),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
