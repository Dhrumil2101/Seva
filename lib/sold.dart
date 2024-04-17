import 'package:flutter/material.dart';
import 'detail.dart';
class sold extends StatefulWidget {
  const sold({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<sold> createState() => _soldState();
}

class _soldState extends State<sold> {
  @override
  Widget build(BuildContext context) {
    return ListView(

        children: <Widget> [

           cards(img: AssetImage("assets/demo.jpg"),titles: "Clik here",subtitle: "To get more details",),
           cards(img: AssetImage("assets/parth.jpg"),titles: "Clik here",subtitle: "To get more details",),
           cards(img: AssetImage("assets/demo.jpg"),titles: "Clik here",subtitle: "To get more details",),




    ],

    );
  }
}

class cards extends StatelessWidget {

  cards({required this.img,required this.titles,required this.subtitle});

  final AssetImage img;
  final String titles;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: InkWell(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // add this
          children:  <Widget>[
            ClipRRect(

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Image(
                image: img,
              ),

            ),
            ListTile(
              title: Text(titles),
              subtitle: Text(subtitle),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => detailsofcard()));
              },
            ),
          ],
        ),
      ),
    );
  }
}


