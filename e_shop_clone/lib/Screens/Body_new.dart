import 'package:e_shop_clone/Screens/feedScreen.dart';
import 'package:flutter/material.dart';

class Body_New extends StatelessWidget {
  const Body_New({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          padding: EdgeInsets.only(top: 0, bottom: 15, left: 0, right: 0),
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
                      top: 0,
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
                  endIndent: 8,
                ),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 10),
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
        Padding(
          padding: const EdgeInsets.only(
            right: 38,
            left: 38,
            top: 25,
            bottom: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'View More→',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.wb_sunny_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('All'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.style_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('Fashion'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.laptop_chromebook_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('Electronics'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.gamepad_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('Games'),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.music_note_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('Music'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.table_bar_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('Furniture'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.car_repair,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('Vehicles'),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 25,
                    child: Icon(
                      Icons.view_sidebar_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text('Others'),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 38,
            left: 38,
            top: 25,
            bottom: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Explore Now→',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FeedScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        child: Image.asset(
                          'asset/Image/shoes.webp',
                          cacheHeight: 100,
                          cacheWidth: 100,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Shoes',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Rs 3500',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                      bottom: 20,
                    ),
                    child: Image.asset(
                      'asset/Image/Chair.jpg',
                      cacheHeight: 100,
                      cacheWidth: 100,
                    ),
                  ),
                  Text(
                    'Chair',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Rs 1500',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                      bottom: 20,
                    ),
                    child: Image.asset(
                      'asset/Image/guitar.webp',
                      cacheHeight: 100,
                      cacheWidth: 100,
                    ),
                  ),
                  Text(
                    'Guitar',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Rs 15000',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
