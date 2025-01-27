import 'package:flutter/material.dart';
import 'package:get/get.dart';
class EmptyDataWidget extends StatelessWidget {
  final String label ;
  const EmptyDataWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: Get.width,
      child: Center(
        child: Text("No $label Found"),
      ),
    );
  }
}
