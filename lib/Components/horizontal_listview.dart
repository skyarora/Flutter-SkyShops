import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/category/ts1.jpg',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'assets/images/category/d1.jpg',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'assets/images/category/f1.jpg',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'assets/images/category/if.jpg',
            image_caption: 'In Formal',
          ),
          Category(
            image_location: 'assets/images/category/j1.jpg',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'assets/images/category/s1.jpg',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'assets/images/category/ot.jpg',
            image_caption: 'Others',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(image_location, width: 100.0, height: 80.0),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}
