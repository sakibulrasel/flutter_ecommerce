import 'package:flutter/material.dart';
import 'package:instacart_ecommerce/model/category.dart';


class Store{

  final String store_id;
  final String store_name;
  final List<Category> categoryList;

  const Store({
    @required this.store_id,
    @required this.store_name,
    @required this.categoryList
  });

}