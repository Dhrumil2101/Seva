import 'dart:ui';
import 'sold.dart';
import 'package:flutter/material.dart';
import 'buy.dart';
import 'rent.dart';
import 'more.dart';
import 'detail.dart';

class Bottomnev extends StatefulWidget {
  @override
  State<Bottomnev> createState() => _BottomnevState();
}

class _BottomnevState extends State<Bottomnev> {
  final tabs = [
    buy(title: 'buy',),
    rent(title: 'rent',),
    sold(title: 'sold',),
    more(),
    detailsofcard(),

  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const  [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/buy-home.png'),
              color: Colors.black,
            ),
            label: 'Buy',

          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/rent.png'),
              color: Colors.black,
            ),
            label: 'Rent',

          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/deal.png'),
              color: Colors.black,

            ),
            label: 'Sold',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/more.png'),
              color: Colors.black,
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },

      ),

    );

  }
}
