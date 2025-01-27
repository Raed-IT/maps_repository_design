import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/products/data/repositories/products_repository.dart';
import 'package:maps_sqflite/featuers/products/domain/entities/product.dart';

class ProductController extends GetxController {
  final ProductRepositoryImpl repository;

  ProductController(this.repository);

  RxList<Product> products = <Product>[].obs;
  RxBool loading = true.obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  Future<void> getProducts() async {
    products.value = await repository.getProducts();
    loading.value = false;
  }
}
