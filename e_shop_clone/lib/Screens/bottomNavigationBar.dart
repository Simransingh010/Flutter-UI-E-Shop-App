import 'package:e_shop_clone/Screens/cartScreen.dart';
import 'package:e_shop_clone/Screens/feedScreen.dart';
import 'package:e_shop_clone/Screens/home.dart';
import 'package:e_shop_clone/Screens/inboxScreen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List pages = [
    Home(),
    FeedScreen(),
    CartScreen(),
    InboxScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedLabelStyle: TextStyle(
          color: Colors.purple,
        ),
        unselectedLabelStyle: TextStyle(
          color: Color.fromARGB(
            255,
            171,
            215,
            247,
          ),
        ),
        selectedItemColor: Colors.purple,
        unselectedItemColor: const Color.fromARGB(255, 169, 32, 193),
        onTap: (index) {
          setState(() {
            _index = index;
            print(
              "Index: $index",
            );
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.featured_play_list,
              color: Colors.purple,
            ),
            icon: Icon(Icons.featured_play_list_outlined, color: Colors.black),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_bag,
              color: Colors.purple,
            ),
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.mail_rounded,
              color: Colors.purple,
            ),
            icon: Icon(Icons.mail_outline, color: Colors.black),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}




//  bottomNavigationBar: BottomNavigationBar(
//         height: 70,
//         backgroundColor: Colors.white,
//         elevation: 0,
        
//         destinations: [
//           NavigationDestination(
//             icon: Icon(
//               Icons.home,
//               color: Colors.purple,
//               size: 35,
//               shadows: [Shadow(color: Colors.white)],
//             ),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Icon(
//               Icons.feed,
//               color: Colors.purple,
//             ),
//             label: 'Feed',
//           ),
//           NavigationDestination(
//             icon: Icon(
//               Icons.shopping_bag,
//               color: Colors.purple,
//             ),
//             label: 'Cart',
//           ),
//           NavigationDestination(
//             icon: Icon(
//               Icons.inbox,
//               color: Colors.purple,
//             ),
//             label: 'Inbox',
//           ),
//         ],
//       ),