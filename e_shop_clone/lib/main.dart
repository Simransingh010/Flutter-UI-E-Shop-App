import 'package:e_shop_clone/Screens/bottomNavigationBar.dart';
import 'package:e_shop_clone/Screens/cart_provider.dart';
// import 'package:e_shop_clone/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 222, 149, 89)),
          useMaterial3: true,
        ),
        home: const BottomNavBar(),
      ),
    );
  }
}
