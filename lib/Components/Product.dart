import 'package:flutter/material.dart';
import 'package:skyecommerce/Components/pages/product_details.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/bl1.jpg",
      "old_price": "120",
      "price": "80",
    },
    {
      "name": "Red Dress",
      "picture": "assets/images/rd.jpg",
      "old_price": "120",
      "price": "115",
    },
    {
      "name": "Red Mini",
      "picture": "assets/images/d1.jpg",
      "old_price": "150",
      "price": "90",
    },
    {
      "name": "Red flower",
      "picture": "assets/images/d2.jpg",
      "old_price": "120",
      "price": "90",
    },
    {
      "name": " Skirt",
      "picture": "assets/images/d3.jpg",
      "old_price": "140",
      "price": "96",
    },
    {
      "name": "  Red beauty Dress",
      "picture": "assets/images/d4.jpg",
      "old_price": "110",
      "price": "80",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        //passing value of the  product to product details page
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\$${prod_price}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
