import '../model/store.dart';
import 'package:flutter/material.dart';

class Location{

  final String location_id;
  final String location_name;
  final List<Store> storeList;

  const Location({
    @required this.location_id,
    @required this.location_name,
    @required this.storeList
  });

}