import 'package:maps_sqflite/featuers/products/data/datasources/locale_products_datasource.dart';
import 'package:maps_sqflite/featuers/products/data/models/product_model.dart';
import 'package:maps_sqflite/featuers/products/domain/entities/product.dart';
import 'package:maps_sqflite/featuers/products/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
    final LocaleProductsDatasource datasource;

    ProductRepositoryImpl(this.datasource);

  @override
  Future<Product> addProduct(Product product) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getProducts() async {
    List<Map<String, dynamic>> data = await datasource.getAllProducts();
    //  loop items
    //  convert from map to ProductModel
    //  return a List

      return data.map((product)=>  ProductModel.fromMap(product) ).toList();
  }
}
