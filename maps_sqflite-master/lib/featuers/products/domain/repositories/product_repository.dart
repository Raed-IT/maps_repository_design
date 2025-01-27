import 'package:maps_sqflite/featuers/products/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
  Future<Product> addProduct(Product product);
}