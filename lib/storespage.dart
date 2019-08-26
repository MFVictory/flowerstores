import 'package:flutter/material.dart';
import 'main.dart';
import 'storelist.dart';

class StoresPage extends StatefulWidget {
  String storeName;
  String storeDeliveryTime;
  String deliveryCharges;
  List<String> storePageImage;
  List<String> storePageItemName;
  List<String> storePageItemPrice;

  StoresPage({
    this.storeName, this.storeDeliveryTime, this.deliveryCharges, this.storePageImage, this.storePageItemName, this.storePageItemPrice
  });

  @override
  _StoresPageState createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 5.0),
                        child: GestureDetector(
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );},
                            child: Icon(Icons.navigate_before, color: Colors.black87,)),
                      ),
                    ],
                  ),
                ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                  Column(children: <Widget>[
                        for (var storeImage in widget.storePageImage)
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(storeImage),
                              ),
                            ),
                          ),
                      ],
                      ),
                      Row(
                        children: <Widget>[
                          for (var storePageItemName in widget.storePageItemName)
                            Text(storePageItemName),
                        ],
                      ),
                      Row(children: <Widget>[
                        for (var storePageItemPrice in widget.storePageItemPrice)
                          Text(storePageItemPrice),
                      ],
                      ),

                ],
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}