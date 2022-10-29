import 'package:flutter/material.dart';

Widget busyIndicator() {
  return Center(
    child: Container(
      width: 50.0,
      height: 50.0,
      margin: EdgeInsets.all(100.0),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: CircularProgressIndicator(),
      ),
    ),
  );
}
