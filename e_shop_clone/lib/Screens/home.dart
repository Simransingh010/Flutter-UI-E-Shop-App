import 'dart:html';

import 'package:e_shop_clone/Screens/Drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.purple,
        elevation: 1,
        title: searchBox(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: IconButton(
                icon: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('asset/Image/avatar.jpeg'),
                ),
                onPressed: () {},
              ),
            ),
          ),
          // Image.asset('asset/Image/avatar.jpeg'),
        ],
      ),
      drawer: const DrawerCall(),
      body: Center(
        child: Text(
          'Simran',
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    alignment: Alignment.bottomCenter,
    child: SizedBox(
      height: 35,
      width: 200,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(9.0),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 22,
            ),
            prefixIconConstraints: BoxConstraints(
              minHeight: 10,
              minWidth: 25,
            ),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    ),
  );
}
