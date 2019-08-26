class Stores {
  String storeName;
  String storeImage;
  String storeDeliveryTime;
  String deliveryCharges;
  List<String> storePageImage;
  List<String> storePageItemName;
  List<String> storePageItemPrice;

  Stores.list({this.storeName, this.storeDeliveryTime,
    this.storeImage,this.deliveryCharges,this.storePageImage,
    this.storePageItemName, this.storePageItemPrice});
}


Stores newStore1 = Stores.list(
  storeName: "New Look",
  storeImage: "images/STORE1FRONT.jpg",
  storeDeliveryTime: "25 min",
  deliveryCharges: "£3.90",
  storePageImage: ["images/flower-1.jpg","images/flower-2.jpg"],
  storePageItemName: ["Black Knit Geometric","Khaki Half Zip Funnel","Grey Knit Notch Neck","Teal Knit Geometric Polo Shirt" ],
  storePageItemPrice: ["£17.99","17.99"],
);

Stores newStore2 = Stores.list(
  storeName: "H&M",
  storeImage: "images/STORE2FRONT.jpg",
  storeDeliveryTime: "25 min",
  deliveryCharges: "£2.90",
  storePageImage: ["images/flower-3.jpg","images/flower-4.jpeg"],
  storePageItemName: ["Black t-shirt", "Black t-shirt",],
  storePageItemPrice: ["£10.99", "£10.99"],
);

List<Stores> storesList = [
  newStore1,
  newStore2,
];