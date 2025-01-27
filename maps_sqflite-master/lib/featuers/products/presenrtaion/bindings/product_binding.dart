import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/products/data/datasources/locale_products_datasource.dart';
import 'package:maps_sqflite/featuers/products/data/repositories/products_repository.dart';
import 'package:maps_sqflite/featuers/products/presenrtaion/controllers/products_controller.dart';

class  ProductBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LocaleProductsDatasource());
    Get.put(ProductRepositoryImpl(Get.find<LocaleProductsDatasource>()));
    Get.put(ProductController(Get.find<ProductRepositoryImpl>()));
  }
}