import 'package:flutter/material.dart';

class detailsofcard extends StatefulWidget {
  const detailsofcard({Key? key}) : super(key: key);

  @override
  State<detailsofcard> createState() => _detailsofcardState();
}

class _detailsofcardState extends State<detailsofcard> {
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
      color: Colors.black,
      margin: EdgeInsets.all(8.0),
      child: Card(
        color: Colors.red,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // add this
            children:const  <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image(
                  image: AssetImage("assets/demo.jpg"),
                ),
              ),
              ListTile(
                title: Text(
                  '3',
                  style: TextStyle(color: Colors.black),
                ),
                leading:
                  ImageIcon(
                  AssetImage('assets/bed.png'),
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  '3',
                  style: TextStyle(color: Colors.black),
                ),
                leading: ImageIcon(
                  AssetImage('assets/bathroom.png'),
                  size: 50.0,
                  color: Color(0xFFFFF176),
                ),
              ),
              ListTile(
                title: Text(
                  '1',
                  style: TextStyle(color: Colors.black),
                ),
                leading: ImageIcon(
                  AssetImage('assets/parking.png'),
                  size: 50.0,
                  color: Color(0xFF1A237E),
                ),
              ),
              ListTile(
                title: Text(
                  '300',
                  style: TextStyle(color: Colors.black),
                ),
                leading: ImageIcon(
                  AssetImage('assets/squre.png'),
                  size: 40.0,
                  color: Color(0xFF0091EA),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
