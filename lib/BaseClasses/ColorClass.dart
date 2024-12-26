import 'package:flutter/material.dart';

class Colorclass {
  static const Color dustyPink = Color.fromARGB(255, 213, 173, 166); // #d5ada6
  static const Color brown = Color.fromARGB(255, 50, 33, 30);   

  static const LinearGradient gradient = LinearGradient(
    colors: [dustyPink, brown],
    begin: Alignment.bottomRight,
    end: Alignment.bottomLeft,
    );
}
