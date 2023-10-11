import 'package:flutter/material.dart';

enum ImageConstant {
  collectionLight('collection'),
  collectionDark('collection_dark'),
  hoodieLight('hoodie'),
  hoodieDark('hoodie_dark'),
  black('black');

  const ImageConstant(this.value);
  final String value;

  String get toPng => 'assets/images/$value.png';
  Image get toImage => Image.asset(toPng);
}
