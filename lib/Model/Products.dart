import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final String img;
  final double price;
  

  Product({this.id, this.img, this.name, this.price});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      name: 'Modern Sofa',
      img: 'assets/images/1.jpg',
      price: 200.0,
    ),
    Product(
      id: '2',
      name: 'Srylish Bed',
      img: 'assets/images/2.png',
      price: 100.0,
    ),
    Product(
      id: '3',
      name: 'Chair',
      img: 'assets/images/3.png' ,
      price: 103.0,
    ),
    Product(
      id: '4',
      name: 'SeeSaw chair',
      img: 'assets/images/4.jpg',
      price: 123.0,
    ),
     Product(
      id: '5',
      name: ' Archetypes',
      img: 'assets/images/5.jpg',
      price: 223.0,
    ),
     Product(
      id: '6',
      name: 'Ball Lamp',
      img: 'assets/images/6.jpg',
      price: 323.0,
    ),
     Product(
      id: '7',
      name: 'Mercury Lamp',
      img: 'assets/images/7.jfif',
      price: 220.0,
    ),
     Product(
      id: '8',
      name: 'office chair',
      img: 'assets/images/8.jfif',
      price: 83.0,
    ),
     Product(
      id: '9',
      name: 'Penstand',
      img: 'assets/images/9.jpg',
      price: 65.0,
    ),
     Product(
      id: '10',
      name: 'Boston Stool',
      img: 'assets/images/10.jpeg',
      price: 400.0,
    ),
      Product(
      id: '11',
      name: 'mike',
      img: 'assets/images/11.jpeg',
      price: 200.0,
    ),
    Product(
      id: '12',
      name: 'Dining Table',
      img: 'assets/images/12.jpeg',
      price: 100.0,
    ),
    Product(
      id: '13',
      name: 'Clipart',
      img: 'assets/images/13.jpeg',
      price: 103.0,
    ),
    Product(
      id: '14',
      name: 'wooden stool',
      img: 'assets/images/14.jpeg',
      price: 123.0,
    ),
     Product(
      id: '15',
      name: 'Bed',
      img: 'assets/images/15.jpeg',
      price: 223.0,
    ),
     Product(
      id: '16',
      name: 'Refrigerator',
      img: 'assets/images/16.jpeg',
      price: 323.0,
    ),
     Product(
      id: '17',
      name: 'Fan',
      img: 'assets/images/17.jpeg',
      price: 220.0,
    ),
     Product(
      id: '18',
      name: 'Television',
      img: 'assets/images/18.jpeg',
      price: 83.0,
    ),
     Product(
      id: '19',
      name: 'Table Fan',
      img: 'assets/images/19.jpeg',
      price: 65.0,
    ),
     Product(
      id: '20',
      name: 'Boston Stool',
      img: 'assets/images/10.jpeg',
      price: 400.0,
    ),
  ];

  List<Product> get item {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
