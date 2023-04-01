import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../componant/com.dart';

class OrderResturant extends StatefulWidget {
  const OrderResturant({super.key});

  @override
  State<OrderResturant> createState() => _OrderResturantState();
}

class _OrderResturantState extends State<OrderResturant> {
  int currentindx = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: Myclipp(),
            child: Stack(children: [
              Container(
                color: Color(0XFFFff3939),
                height: size.height / 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                    child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                )),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        //height: 110,
        selectedItemColor: Colors.white,
        snakeViewColor: Color(0XFFFff3939),
        unselectedItemColor: Color(0XFFFff3939),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          )
        ],
        currentIndex: _selectedIndex,

        onTap: (indx) {
          setState(() {
            _selectedIndex = indx;
          });
        },
      ),
    );
  }
}
