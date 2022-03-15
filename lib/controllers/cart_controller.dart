import 'package:get/state_manager.dart';
import 'package:getx/models/product.dart';

class CartController extends GetxController {
  var cartItems = List<Product>.empty().obs;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
  int get countItems => cartItems.length;

  addToCart(Product product) {
    cartItems.add(product);
  }
}
