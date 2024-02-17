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
      body: Column(
        children: [
          Container(
            width: 500,
            padding: EdgeInsets.only(top: 0, bottom: 25, left: 0, right: 0),
            margin: EdgeInsets.only(
              top: 25,
              right: 45,
              left: 50,
            ),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                        left: 0,
                        top: 10,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.wallet_rounded,
                          color: Colors.white,
                        ),
                        title: Text(
                          'My Wallet',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        subtitle: Text(
                          'Rs 30,432',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 1,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                    thickness: 2.0,
                    indent: 20,
                  ),
                  SizedBox(
                    height: 60,
                    width: 160,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 10, bottom: 10),
                      child: ListTile(
                        leading: Icon(
                          Icons.money,
                          color: Colors.white,
                        ),
                        title: Text(
                          'My Coins',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        subtitle: Text(
                          'Rs 30000',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
