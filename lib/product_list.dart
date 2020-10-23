import 'package:flutter/material.dart';
import 'package:layout/product_box.dart';

class ProductList extends StatelessWidget {
  ProductList({Key key, this.title}): super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "Lipcream Ink Matte Maybeline",
            description: "Lipcream terbaik waterproff",
            price: 115000,
            image: "lipstik.jpg"
          ),
          ProductBox(
            name: "MakeOver Liquid Matte Foundation",
            description: "Foundation terbaik",
            price: 145000,
            image: "foundation1.jpg"
          ),
          ProductBox(
            name: "Make Over Silky Smooth Translucent Powder",
            description: "Bedak terbaik",
            price: 92000,
            image: "bedak1.jpg"
          ),
          ProductBox(
            name: "Focallure Neutral 18 color Eyeshadow palette",
            description: "Eyeshadow dengan kualitas terbaik",
            price: 13500,
            image: "eyeshadow1.jpg"
          ),
          ProductBox(
            name: "Foccalure Blush On",
            description: "Blush On terbaik",
            price: 35000,
            image: "blushon1.jpg"
          ),
          ProductBox(
            name: "Total Temptation Waterproof Mascara",
            description: "Mascara Waterproof terbaik",
            price: 125000,
            image: "mascara1.jpg"
          ),
        ]
      ),
    );
  }
}