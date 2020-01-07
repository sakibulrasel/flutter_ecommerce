import 'package:flutter/material.dart';
class Product{
  final String product_id;
  final String product_name;
  final String image_url;

  const Product({
    @required this.product_id,
    @required this.product_name,
    @required this.image_url
  });

}