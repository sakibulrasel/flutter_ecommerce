import 'package:flutter/material.dart';
import 'package:instacart_ecommerce/model/store.dart';
import 'package:instacart_ecommerce/pages/location_screen.dart';
import 'package:instacart_ecommerce/pages/product_screen.dart';
import 'package:instacart_ecommerce/pages/store_screen.dart';
import './pages/home_screen.dart';
import 'data/dummy_data.dart';
import 'model/location.dart';
import 'model/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  int isLocationSelected = 0;
  var locationId;
  List<Location> selectedLocation=[];
  List<Store> selectedStore=[];

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  void selectLocation(String locationId){
    print('Location Selected');
    print('Location id is ${locationId}');
    setState(() {
      widget.isLocationSelected=1;
      widget.locationId=locationId;
      widget.selectedLocation.add(DUMMY_LOCATION.firstWhere((location)=>location.location_id==locationId));
    });
  }

  void selectStore( BuildContext context, String store_id, List<Location> locationList){
    Navigator.of(context).pushNamed(Product_screen.routeName);
//    print(locationList.first.storeList.firstWhere((store)=>store.store_id==store_id).store_name);
    widget.selectedStore.add(locationList.first.storeList.firstWhere((store)=>store.store_id==store_id));

  }


  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
//      home: HomeScreen(),

      routes: {
        '/': (ctx)=>HomeScreen(widget.isLocationSelected, selectLocation,widget.locationId, widget.selectedLocation,selectStore),
        LocationScreen.routeName: (ctx)=>LocationScreen(selectLocation),
        StoreScreen.routeName: (ctx)=>StoreScreen(widget.locationId,selectStore),
        Product_screen.routeName: (ctx)=>Product_screen(widget.selectedStore),
      },

    );

  }
}

