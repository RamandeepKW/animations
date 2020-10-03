import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget{

  ProductBox(this.name, this.price, this.description, this.image);
  final String name, image, description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      height: 140,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("assets/images/"+image),
              Expanded(child: Container(
                padding: EdgeInsets.all(2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(name, style: TextStyle(fontSize: 22, color: Colors.black),),
                    Text(description, style: TextStyle(fontSize: 18, color: Colors.black38),),
                    Text("Price: "+price.toString(), style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),

              ))
            ],

          ),
        ),
    );

  }

}