import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
        toolbarHeight: 70.0,
        backgroundColor: Colors.purple,
        elevation: 1,
        title: Row(children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 120),
            child: Text(
              'Product',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
            child: SizedBox(
              height: 280,
              width: 420,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              image:
                                  AssetImage('asset/Image/airforce_pic_1.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              image:
                                  AssetImage('asset/Image/airforce_pic_2.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              image:
                                  AssetImage('asset/Image/airforce_pic_3.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: const AssetImage(
                                  'asset/Image/airforce_pic_4.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image:
                                  AssetImage('asset/Image/airforce_pic_5.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 280,
                      enlargeCenterPage: true,
                      animateToClosest: false,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      enlargeFactor: 10,
                      aspectRatio: 1.0,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.7,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Nike Air Force 1'07",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(
                      Icons.sell,
                      size: 20,
                      color: Colors.purple,
                    ),
                    Text(
                      'Rs 8,195',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(
                      Icons.emoji_emotions,
                      size: 20,
                      color: Colors.pink,
                    ),
                    Text(
                      'Rs 20k Likes',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.yellow,
                    ),
                    Text(
                      '4.5 Ratings',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 20, right: 40),
              child: Text(
                'Cool Shoes with Casual Style, Suitable for Men and Women. Can be Used for Travelling and Marathon, etc.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.done_rounded,
                          size: 20,
                          color: Colors.purple,
                        ),
                        Text(
                          'Custom Size',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.done_rounded,
                          size: 20,
                          color: Colors.purple,
                        ),
                        Text(
                          'Custom Shoelace',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.done_rounded,
                          size: 20,
                          color: Colors.purple,
                        ),
                        Text(
                          'Comfortable',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.done_rounded,
                          size: 20,
                          color: Colors.purple,
                        ),
                        Text(
                          'Guaranteed',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.done_rounded,
                          size: 20,
                          color: Colors.purple,
                        ),
                        Text(
                          'Free Shipping',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.done_rounded,
                          size: 20,
                          color: Colors.purple,
                        ),
                        Text(
                          'Custom Build',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Size',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'S',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'M',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'L',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'XL',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'XXL',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
