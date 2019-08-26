import 'package:flowerstores/storespage.dart';
import 'package:flutter/material.dart';
import 'storelist.dart';
import 'whatIwant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Floww Delivery",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 1000),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: storesList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new StoresPage(
                            storeName: storesList[index].storeName,
                            storeDeliveryTime: storesList[index].storeDeliveryTime,
                            deliveryCharges: storesList[index].deliveryCharges,
                            storePageImage: storesList[index].storePageImage,
                            storePageItemName: storesList[index].storePageItemName,
                            storePageItemPrice: storesList[index].storePageItemPrice,
                          )));},
                      child: Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 205,
                              width: 380,
                              child: Image(image: AssetImage(storesList[index].storeImage),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(storesList[index].storeName),
                                  Row(children: <Widget>[
                                    Icon(Icons.update, size: 20.0),
                                    Text(storesList[index].storeDeliveryTime),
                                  ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],),
    );
  }
}