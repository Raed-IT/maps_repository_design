import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/todos/presentation/controllers/todos_controller.dart';

class TodosPage extends GetView<TodosController> {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos List "),
      ),
      body: ListView.builder(
        itemCount: controller.todos.length,
        itemBuilder: (context,index){
        return ListTile(
          title: Text(controller.todos[index].title),
          subtitle: Text(controller.todos[index].content),
        );
      },),
    );
  }
}