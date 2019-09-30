import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import '../model/food.dart';

class DBHelper{
  static Database _db;
  static const String DB_NAME = 'mydiabetes.db';

  static const String ID = 'id';
  static const String NAME = 'name';
  static const String IMAGE = 'image';
  static const String SUGAR = 'sugar';
  static const String TABLE = 'Food';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
        .execute("CREATE TABLE $TABLE ($ID INTEGER PRIMARY KEY, $NAME TEXT, $IMAGE TEXT, $SUGAR TEXT)");
  }

  Future<Food> save(Food food) async {
    var dbClient = await db;
    food.id = await dbClient.insert(TABLE, food.toMap());
    return food;
    /*
    await dbClient.transaction((txn) async {
      var query = "INSERT INTO $TABLE ($NAME) VALUES ('" + employee.name + "')";
      return await txn.rawInsert(query);
    });
    */
  }

  Future<List<Food>> getFood() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [ID, NAME, IMAGE, SUGAR]);
    //List<Map> maps = await dbClient.rawQuery("SELECT * FROM $TABLE");
    List<Food> foods = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        foods.add(Food.fromMap(maps[i]));
      }
    }
    return foods;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(TABLE, where: '$ID = ?', whereArgs: [id]);
  }

  Future<int> update(Food food) async {
    var dbClient = await db;
    return await dbClient.update(TABLE, food.toMap(),
        where: '$ID = ?', whereArgs: [food.id]);
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }

}