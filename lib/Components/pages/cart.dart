import 'package:flutter/material.dart';
import 'package:skyecommerce/Components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: null),

        ],
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              title: new Text("Total Amount:"),
              subtitle: new Text("\$230"),

            ),
          ),
          Expanded(
            child: MaterialButton(onPressed: (){},
            child: new Text("Checkout",style: TextStyle(color: Colors.white),),color: Colors.red),
          )
        ],
      ),),

    );
  }
}
