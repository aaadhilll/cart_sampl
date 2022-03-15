import 'package:get/state_manager.dart';
import 'package:getx/models/product.dart';

class ShoppingController extends GetxController {
  var products = List<Product>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    // ignore: prefer_const_constructors
    await Future.delayed(Duration(seconds: 1));

    var productResult = [
      Product(
          id: 1,
          productName: 'first prod',
          productImage: 'gfdgf',
          productDescription: 'productDescription',
          price: 40),
      Product(
          id: 2,
          productName: 'second prod',
          productImage: 'gfdgf',
          productDescription: 'productDescription',
          price: 30),
      Product(
          id: 3,
          productName: 'third prod',
          productImage: 'gfdgf',
          productDescription: 'productDescription',
          price: 50),
    ];
    products.value = productResult;
  }
}
