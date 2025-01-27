import 'package:get/route_manager.dart';
import 'package:maps_sqflite/featuers/products/presenrtaion/bindings/product_binding.dart';
import 'package:maps_sqflite/featuers/products/presenrtaion/pages/products_page.dart';
import 'package:maps_sqflite/featuers/todos/presentation/bindings/add_todo_binding.dart';
import 'package:maps_sqflite/featuers/todos/presentation/bindings/todos_bindings.dart';
import 'package:maps_sqflite/featuers/todos/presentation/pages/add_todo_page.dart';
import 'package:maps_sqflite/featuers/todos/presentation/pages/todos_page.dart';

class AppRouter {
  // static const String todos = "/todos";
  static const String products = "/products";
   // static const String addTodos = "/addTodos";

  static List<GetPage> appPages = [
    // GetPage(name: todos, page: () => TodosPage(), binding: TodosBinding()),
    // GetPage(
    //     name: addTodos, page: () => AddTodoPage(), binding: AddTodoBinding()),
    GetPage(
        name: products,
        page: () => ProductsPage(),
        binding: ProductBinding()
    ),
  ];
}
