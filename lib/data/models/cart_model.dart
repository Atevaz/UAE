import 'dart:math';

class CartModel {
  CartModel(
      {required this.quantity,
      required this.price,
      required this.productName,
      required this.imageName});
  int? quantity;
  int? price;
  String productName;
  String imageName;
}
