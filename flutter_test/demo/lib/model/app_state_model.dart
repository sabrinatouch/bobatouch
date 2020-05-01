import 'package:flutter/semantics.dart';

import 'product.dart';
import 'product_repo.dart';

double _salesTaxRate = 0.03;

class AppStateModel extends Model {
  // All available products
  List<Product> _availableProducts;

  // Currently selected category of products
  Category _selectedCategory = Category.all;

  // IDs and quantities of products in cart
  final Map<int, int> _productsInCart = <int, int>{};
  Map<int, int> get productsInCart => Map<int, int>.from(_productsInCart);

  // Total number of items in the cart
  int get totalCartQuantity => _productsInCart.values.fold(0, (int v, int e) => v + e);

  Category get selectedCategory => _selectedCategory;

  // Total price of items in cart
  double get subtotalCost {
    return _productsInCart.keys
      .map((int id) => _availableProducts[id].price * _productsInCart[id])
      .fold(0.0, (double sum, int e) => sum + e);
  }

  // Sales tax for items in cart
  double get tax => subtotalCost * _salesTaxRate;

  // Overall total cost for everything in cart
  double get totalCost => subtotalCost + tax;

  // Return copy of list of available products (filtered by category)
  List<Product> getProducts() {
    if (_availableProducts == null) {
      return <Product>[];
    }

    if (_selectedCategory == Category.all) {
      return List<Product>.from(_availableProducts);
    } else {
      return _availableProducts
        .where((Product p) => p.category == _selectedCategory)
        .toList();
    }
  }

  // Adds products to cart
  void addProductToCart(int productID) {
    if (!_productsInCart.containsKey(productID)) {
      _productsInCart[productID] = 1;
    } else {
      _productsInCart[productID]++;
    }

    //notifyListeners();
  }

  void removeItemFromCart(int productID) {
    if (_productsInCart.containsKey(productID)) {
      if (_productsInCart[productID] == 1) {
        _productsInCart.remove(productID);
      } else {
        _productsInCart[productID]--;
      }
    }
  }

  // Return Product instance matching the id
  Product getProductById(int id) {
    return _availableProducts.firstWhere((Product p) => p.id == id);
  }

  // Removes everything from the cart
  void clearCart() {
    _productsInCart.clear();
  }

  // Loads the list of available products from the repo
  void loadProducts() {
    _availableProducts = ProductsRepo.loadProducts(Category.all);
  }

  void setCategory(Category newCategory) {
    _selectedCategory = newCategory;
  }

  @override
  String toString() {
    return 'AppStateModel(totalCost: $totalCost)';
  }
}