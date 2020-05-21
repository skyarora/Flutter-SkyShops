import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:skyecommerce/Components/horizontal_listview.dart';
import 'package:skyecommerce/Components/Product.dart';
import 'package:skyecommerce/Components/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/p1.jpg'),
          AssetImage('assets/images/p2.jpg'),
          AssetImage('assets/images/p3.jpg'),
          AssetImage('assets/images/p4.jpg'),
        ],
        autoplay: true,
        dotSize: 3.0,
        dotColor: Colors.red,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 7.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('SkyShpos'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: null),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Sky Arora'),
              accountEmail: Text('aroraakash105@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('Home'),
                leading: Icon(Icons.home, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('My Account'),
                leading: Icon(Icons.person, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
              },
              child: ListTile(
                title: new Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('Setting'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(7.5),
            child: new Text('Categories'),
          ),
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(22.0),
            child: new Text('Recent Products'),
          ),

          //grid view
          Container(
            height: 320,
            child: Product(),
          )
        ],
      ),
    );
  }
}
