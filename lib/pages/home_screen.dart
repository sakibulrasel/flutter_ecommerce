
import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';
import 'package:instacart_ecommerce/model/location.dart';
import 'package:instacart_ecommerce/pages/store_screen.dart';
import '../pages/location_screen.dart';
import '../widgets/main_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  final int isLocationSelected;
  final String locationId;
  final Function selectLocation;
  final Function selectStore;
  final List<Location> selectedLocationList;
  HomeScreen(this.isLocationSelected,this.selectLocation,this.locationId,this.selectedLocationList,this.selectStore);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          // backgroundColor: Color(0xff109618),
          backgroundColor: Theme.of(context).primaryColor,
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: _GooglePlayAppBar(context),
          ),
        ),

        body: widget.isLocationSelected<1 ?
        LocationScreen(widget.selectLocation) :
            StoreScreen(widget.selectedLocationList,widget.selectStore) ,


        drawer: MainDrawer(),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                )
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Explore')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer),
                  title: Text('Coupones')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Cart')
              ),


            ],
            ),
          );


  }
}

Widget _GooglePlayAppBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 80),

            child: Text(
              'Search',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),

        ),
        Container(

          child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.blueGrey,
              ),
              onPressed: (){}),
        ),
      ],
    ),
  );
}

