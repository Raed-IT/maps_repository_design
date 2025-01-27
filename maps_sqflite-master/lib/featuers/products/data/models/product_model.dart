import 'package:maps_sqflite/featuers/products/domain/entities/product.dart';
class ProductModel extends Product {
  ProductModel({
    super.id,
    required super.name,
    required super.price,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      price: map['price'],
      name: map['name'],
     );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'price': price, "name": name, };
  }
}
