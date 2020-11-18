import 'package:nike_idee/models/models.dart';

class OrderModel{
  final List<ShoeModel> shoes;
  final int quantity;
  final String date;

  OrderModel({
    this.shoes,
    this.quantity,
    this.date
  });
}