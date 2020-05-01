import 'package:flutter/foundation.dart';

// enum Category {
//   all,
//   drink,
//   topping,
// }

// class Product {
//   const Product({
//     @required this.category,
//     @required this.id,
//     @required this.name,
//     @required this.price,
//   })  : assert(category != null),
//         assert(id != null),
//         assert(name != null),
//         assert(price != null);

//   final Category category;
//   final int id;
//   final String name;
//   final int price;

//   // String get assetName => '$id-0.jpg';
//   // String get assetPackage => 'shrine_images';

//   @override
//   String toString() => '$name (id=$id)';
// }

class Product {
  String name

  Product(name){
    this.name = name;
  }
}