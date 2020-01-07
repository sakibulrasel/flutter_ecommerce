import 'package:flutter/material.dart';
import 'package:instacart_ecommerce/model/store.dart';

class Categories extends StatelessWidget {
  final String categoryName;
  final String categoryId;
  final List<Store> selectedStore;
  Categories(this.categoryName,this.selectedStore, this.categoryId);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Text(selectedStore.first.categoryList.firstWhere((category)=>category.category_id==categoryId).category_name),
              Row(
                children: <Widget>[

                ],
              )
            ],
          ),
        )

      ],
    );
  }
}
