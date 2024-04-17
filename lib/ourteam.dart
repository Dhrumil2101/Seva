import 'package:flutter/material.dart';

class ourteam extends StatefulWidget {
  const ourteam({Key? key}) : super(key: key);

  @override
  State<ourteam> createState() => _ourteamState();
}

class _ourteamState extends State<ourteam> {
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
      body: ListView(
        children: <Widget>[
          containercard(img: AssetImage("assets/parth.jpg"),name: "Parth Joshi",pos: "Selling Principal",email: "parth.joshi@savaaproperties.com.au",phone: "0449 996 962"),
          containercard(img: AssetImage("assets/parth.jpg"),name: "Parth Joshi",pos: "Selling Principal",email: "parth.joshi@savaaproperties.com.au",phone: "0449 996 962"),
          containercard(img: AssetImage("assets/parth.jpg"),name: "Parth Joshi",pos: "Selling Principal",email: "parth.joshi@savaaproperties.com.au",phone: "0449 996 962"),


        ],
      ),

    );
  }
}

class containercard extends StatelessWidget {
 containercard({required this.img,required this.name,required this.pos,required this.email,required this.phone});

final AssetImage img;
final String name;
final String pos;
final String email;
 final String phone;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,// add this
            children:  <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200.0),
                  topRight: Radius.circular(200.0),
                  bottomLeft: Radius.circular(200.0),
                  bottomRight: Radius.circular(200.0)
                ),
                child: Image(
                  image: img,
                ),
              ),
              Text(name,style: TextStyle(color: Colors.black),),
              Text(pos,style: TextStyle(color: Colors.black),),
              Text(email,style: TextStyle(color: Colors.black),),
              Text(phone,style: TextStyle(color: Colors.black),)

            ],
          ),
        ),
      ),
    );
  }
}
