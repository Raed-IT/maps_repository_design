import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDataBase {
  static Database? _db;

  static get db async {
    _db ?? await initialDataBase();
    return _db;
  }

  static initialDataBase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'maps.db');
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
         CREATE TABLE todos (id INTEGER PRIMARY KEY AUTOINCREMENT , title TEXT, content TEXT, status BOOLEAN )
         ''');
    });
    return database;
  }
}
