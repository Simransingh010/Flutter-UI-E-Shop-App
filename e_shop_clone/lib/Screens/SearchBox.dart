import 'package:flutter/material.dart';

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
