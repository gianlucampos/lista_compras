import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

class DBHelper {
  static Future<Database> database() async {
    final caminhoBanco = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(caminhoBanco, 'listaCompras.db'),
        onCreate: (db, version) {
      return db
          .execute('CREATE TABLE categoria(id TEXT PRIMARY KEY, nome TEXT)');
    }, version: 1);
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DBHelper.database();
    db.insert(table, data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
    print('Realizado insert');
  }

  insertRaw(dynamic object) async {
    final db = await DBHelper.database();
    var result = await db.rawInsert("INSERT INTO Categoria (id,nome)"
        " VALUES (${object.id},${object.nome})");
    return result;
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBHelper.database();
    return db.query(table);
  }
}
