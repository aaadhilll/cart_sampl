import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/cart_controller.dart';
import 'package:getx/controllers/shopping_controller.dart';

// ignore: use_key_in_widget_constructors
class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 7, 7),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      // ignore: prefer_const_constructors
                      return Card(
                        margin: const EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.products[index].productName,
                                        style: const TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        controller
                                            .products[index].productDescription,
                                        style: const TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$${controller.products[index].price}',
                                    style: const TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  cartController
                                      .addToCart(controller.products[index]);
                                },
                                child: const Text(
                                  'Add to Cart',
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            // ignore: prefer_const_constructors
            GetX<CartController>(
              builder: (controller) {
                return Container(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Text(
                    'Total Amount: \$ ${controller.totalPrice} ',
                    style:
                        const TextStyle(fontSize: 32, color: Color(0xFFFFFFFF)),
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Color(0xFFFFFFFF),
        icon: const Icon(
          Icons.add_shopping_cart,
          color: Colors.black,
        ),
        label: GetX<CartController>(
          builder: (controller) {
            return Text(
              controller.countItems.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            );
          },
        ),
      ),
    );
  }
}
