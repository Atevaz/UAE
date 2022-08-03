class OldOrderModel {
  OldOrderModel(
      {required this.quantity,
      required this.price,
      required this.productName,
      required this.priceAfterDiscount});
  int? quantity;
  int? price;
  String productName;
  double priceAfterDiscount;
}
