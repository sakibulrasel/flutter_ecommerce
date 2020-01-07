import 'package:flutter/material.dart';
import 'package:instacart_ecommerce/data/dummy_data.dart';
import 'package:instacart_ecommerce/model/location.dart';
import 'package:instacart_ecommerce/model/store.dart';

class StoreScreen extends StatefulWidget {
  static const routeName = '/store';
  final List<Location> locationList;
  final Function selectStore;
  StoreScreen(this.locationList,this.selectStore);

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index)=>Card(

          child: ListTile(
            title: Text(widget.locationList.first.storeList[index].store_name),
            onTap: ()=>widget.selectStore(context,widget.locationList.first.storeList[index].store_id,widget.locationList),
          ),
        ),
      itemCount: widget.locationList.first.storeList.length,
    );
  }
}
