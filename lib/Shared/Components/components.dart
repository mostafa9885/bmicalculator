
import 'package:flutter/material.dart';

Widget DefualtFloatActionButton ({

  required Function() function,
  Icon icon = const Icon(Icons.add),
  Text text = const Text('Plus'),
  Color color = Colors.blue,
  double elevation = 4,
  bool isMini = false,
  String namefloatAction = '',

}) => FloatingActionButton(
  onPressed: function,
  child: icon,
  backgroundColor: color,
  elevation: elevation,
  mini: isMini,
  heroTag: namefloatAction,
);
