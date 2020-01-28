import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../models/Categoria.dart';

class DBHelper {
  static Database _database;

  // Verifica se já existe conexão com o banco
  static Future<Database> db() async {
    if (_database != null) return _database;
    await _initDB().then((db) {
      _database = db;
    });
    return _database;
  }

  static Future<Database> _initDB() async {
    final caminhoBanco = await getDatabasesPath();
    final path = join(caminhoBanco, 'listaCompras.db');
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  static _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE Categoria(id TEXT PRIMARY KEY, nome TEXT)');
    await db
        .rawInsert("INSERT INTO Categoria (id, nome) VALUES ('1','Frutas');");
    await db
        .rawInsert("INSERT INTO Categoria (id, nome) VALUES ('2','Legumes');");
  }

  //Operações CRUD, futuramente criar e colocar nos DAOs

  //Insert útil para json
  static Future<void> create(String table, Map<String, Object> data) async {
    final db = await DBHelper.db();
    db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static createRaw(dynamic object) async {
    final db = await DBHelper.db();
    var result = await db.rawInsert("INSERT INTO Categoria (id,nome) "
        " VALUES (${object.id},${object.nome})");
    return result;
  }

  static Future<int> insert(Categoria object) async {
    final db = await DBHelper.db();
    var result = await db.insert('Categoria', object.toMap());
    return result;
  }

  // Retrieve genérico para utilizar com o provider
  static Future<List<Map<String, dynamic>>> retrieve(String table) async {
    final db = await DBHelper.db();
    //		var result = await db.rawQuery('SELECT * FROM $table order by id');
    return db.query(table);
  }

  // Update
  static Future<int> update(dynamic object) async {
    var db = await DBHelper.db();
    var result = await db.update(object.runtimeType.toString(), object.toMap(),
        where: 'id = ?', whereArgs: [object.id]);
    return result;
  }

  // Delete
  static Future<int> delete(int id, String tableName) async {
    var db = await DBHelper.db();
    int result = await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
//    int result = await db.rawDelete('DELETE FROM $tableName WHERE id = $id');
    return result;
  }
}
