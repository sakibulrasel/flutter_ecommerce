import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../model/location.dart';

class LocationScreen extends StatelessWidget {

  static const routeName = '/location';
  final Function selectLocation;
  LocationScreen(this.selectLocation);
  List<Location> locationList = DUMMY_LOCATION;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index)=>Card(

          child: ListTile(
            title: Text(locationList[index].location_name),
            onTap: ()=>selectLocation(locationList[index].location_id),
          ),
        ),
      itemCount: locationList.length,
    );
  }
}
