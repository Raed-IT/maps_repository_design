import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/products/presenrtaion/controllers/products_controller.dart';
import 'package:maps_sqflite/widgets/empty_data.dart';

class ProductsPage extends GetView<ProductController> {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Expanded(
        child: Obx(
          () => controller.loading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : controller.products.isNotEmpty
                  ? ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(controller.products[index].name),
                        subtitle: Text(controller.products[index].price),
                      ),
                    )
                  : EmptyDataWidget(label: "Products"),
        ),
      ),
    );
  }
}
