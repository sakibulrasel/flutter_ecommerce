import 'package:flutter/material.dart';
import 'package:instacart_ecommerce/model/product.dart';
class Category{
  final String category_id;
  final String category_name;
  final List<Product> productList;

  const Category({
    @required this.category_id,
    @required this.category_name,
    @required this.productList
  });

}