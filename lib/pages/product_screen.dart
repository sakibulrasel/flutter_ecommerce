import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instacart_ecommerce/widgets//category.dart';
import 'package:instacart_ecommerce/model/store.dart';

class Product_screen extends StatelessWidget {
  static const routeName = '/product';
  final List<Store> selectedStore;
  Product_screen(this.selectedStore);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context,index)=>Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(selectedStore.first.categoryList[index].category_name)
            ),

              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                  itemBuilder: (ctx,idx)=>Row(
                    children: <Widget>[
                      Text(selectedStore.first.categoryList[index].productList[idx].product_name)
                    ],
                  ),
                itemCount: selectedStore.first.categoryList[index].productList.length,
              )
//              Row(
//             children: <Widget>[
//           ...selectedStore.first.categoryList[index].productList.map((answer){
//      return Text('asdf');
//      }).toList()
//             ],
//           )
          ],

        ),
        itemCount: selectedStore.first.categoryList.length,
      ),

//      ...selectedStore.first.categoryList.map((answer){
//      return Categories(answer.category_name,selectedStore,answer.category_id);
//      }).toList()



//      ListView.builder(
//        itemBuilder: (context,index)=>Column(
//          children: <Widget>[
//            Align(
//                alignment: Alignment.topLeft,
//                child: Text(selectedStore.first.categoryList[index].category_name)
//            ),
//           Row(
//             children: <Widget>[
//           ...selectedStore.first.categoryList[index].productList.map((answer){
//      return Text('asdf');
//      }).toList()
//             ],
//           )
//          ],
//
//        ),
//        itemCount: selectedStore.first.categoryList.length,
//      ),
    );
  }
}
