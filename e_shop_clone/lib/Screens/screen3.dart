import 'dart:convert';
import 'dart:developer';
import 'package:e_shop_clone/Screens/cart_provider.dart';
import 'package:e_shop_clone/Screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class ItemScreen3 extends StatefulWidget {
  const ItemScreen3({super.key});

  @override
  State<ItemScreen3> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen3> {
  Future<List> _getProduct() async {
    var url =
        Uri.parse("https://fake-store-api.mock.beeceptor.com/api/products");
    final response = await http.get(url);
    final data = jsonDecode(response.body);

    return data;
  }

  List<dynamic> _filteredProducts = [];

  void _runFilter(String enteredKeyword) async {
    if (enteredKeyword.isEmpty) {
      setState(() {
        _filteredProducts = [];
      });
    } else {
      List<dynamic> results = (await _getProduct())
          .where((product) => product['title']
              .toString()
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      setState(() {
        _filteredProducts = results;
      });
    }
  }

  @override
  void initState() {
    _getProduct();
    super.initState();
  }

  Widget searchBox2() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 35,
        width: 290,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            onChanged: _runFilter,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ));
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      fixedSize: MaterialStateProperty.all(
                        const Size.fromWidth(320),
                      ),
                      maximumSize:
                          MaterialStateProperty.all(const Size.fromHeight(50))),
                  child: const Text(
                    'Open Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: searchBox2(),
        // title: const Text('Products'),
      ),
      body: FutureBuilder<List>(
        future: _getProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data == null) {
            return const Center(
              child: Text("No data"),
            );
          }

          if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text('Data empty'),
            );
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              final product = snapshot.data![index];
              return Card(
                surfaceTintColor: Colors.white,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                product['image'],
                              ),
                              fit: BoxFit.contain),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        snapshot.data![index]['name'],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$${product['price'].toStringAsFixed(1)}'),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1000),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                            onPressed: () {
                              Provider.of<CartProvider>(context, listen: false)
                                  .addToCart(
                                CartItem(
                                  name: product['title'],
                                  price:
                                      (product['price'] as num?)?.toDouble() ??
                                          0.0,
                                ),
                              );
                              log('added');
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                behavior: SnackBarBehavior.floating,
                                dismissDirection: DismissDirection.horizontal,
                                width: 250,
                                content:
                                    Text('Item Added to Cart Successfully'),
                                duration: Duration(seconds: 1),
                              ));
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
