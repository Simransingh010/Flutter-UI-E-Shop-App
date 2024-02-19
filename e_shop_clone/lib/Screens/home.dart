import 'package:e_shop_clone/Screens/Body_new.dart';
import 'package:e_shop_clone/Screens/Drawer.dart';
import 'package:e_shop_clone/Screens/SearchBox.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
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
                icon: const CircleAvatar(
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
      body: const Body_New(),
    );
  }
}
