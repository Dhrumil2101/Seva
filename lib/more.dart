import 'package:flutter/material.dart';

import 'Aboutus.dart';
import 'contactus.dart';

class more extends StatefulWidget {
  const more({Key? key}) : super(key: key);

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(right: 293),
              child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Aboutus()));
                  },
                  child: Text("About Us",style: TextStyle(color: Colors.black),)),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => contactus()));
                  },
                  child: Text("Contact Us",style: TextStyle(color: Colors.black),)),
            ),

          ],


        ),

      ),

    );
  }
}
