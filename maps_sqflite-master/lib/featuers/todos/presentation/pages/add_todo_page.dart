import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/todos/presentation/controllers/add_todo_controller.dart';

class AddTodoPage extends GetView<AddTodoController> {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Todo Title")
          ],
        ),
      ),
    );
  }
}