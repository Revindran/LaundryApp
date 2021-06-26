import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundryapp/view/home/home_screen.dart';
import 'package:laundryapp/view/porfile/profile_screen.dart';

import 'order/order_screen.dart';

class BottomBarHome extends StatefulWidget {
  @override
  _BottomBarHomeState createState() => _BottomBarHomeState();
}

class _BottomBarHomeState extends State<BottomBarHome> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = [
      HomeScreen(),
      OrdersScreen(),
      ProfileScreen(),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Orders', icon: Icon(Icons.shopping_basket_outlined)),
              BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(Icons.person)),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.grey[400],
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
