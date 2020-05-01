/**
 * Product naming and pricing
 */

import 'product.dart';

class ProductsRepo {
  static List<Product> loadProducts(Category category) {
    const List<Product> allProducts = <Product> [
      Product(
        category: Category.drink,
        id: 0,
        name: 'Earl Grey Milk Tea',
        price: 4,
      ),
      Product(
        category: Category.drink,
        id: 1,
        name: 'Assam Milk Tea',
        price: 4,
      ),
      Product(
        category: Category.topping,
        id: 2,
        name: 'Boba',
        price: 1,
      ),
      Product(
        category: Category.topping,
        id: 3,
        name: 'Lychee Jelly',
        price: 2,
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) => p.category == category).toList();
    }
  }
}