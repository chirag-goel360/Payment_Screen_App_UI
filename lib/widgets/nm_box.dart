import 'package:flutter/material.dart';

Color grayshade100 = Colors.grey.shade100;
Color white = Colors.white;
Color blacklight = Colors.black.withOpacity(0.075);
Color green = Colors.green;
Color grayshade700 = Colors.grey.shade700;
Color redshade200 = Colors.red.shade200;

BoxDecoration nmBox = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: grayshade100,
  boxShadow: [
    BoxShadow(
      color: blacklight,
      offset: Offset(
        10,
        10,
      ),
      blurRadius: 10,
    ),
    BoxShadow(
      color: white,
      offset: Offset(
        -10,
        -10,
      ),
      blurRadius: 10,
    ),
  ],
);

BoxDecoration nmBoxInvert = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: blacklight,
  boxShadow: [
    BoxShadow(
      color: white,
      offset: Offset(
        3,
        3,
      ),
      blurRadius: 3,
      spreadRadius: -3,
    ),
  ],
);

BoxDecoration nmBoxInvertActive = nmBoxInvert.copyWith(
  color: green,
);

BoxDecoration nmButton = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: grayshade100,
  boxShadow: [
    BoxShadow(
      color: blacklight,
      offset: Offset(
        2,
        2,
      ),
      blurRadius: 2,
    ),
  ],
);
