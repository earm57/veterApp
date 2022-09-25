import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:veterapp/models.dart';

class DB {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'usuarios.db'),
        onCreate: (db, version) {
      return db.execute('''
    CREATE  TABLE usuarios(
      id INTEGER PRIMARY KEY,
      nombres TEXT,
      apellidos TEXT,
      celuLar INTEGER,
      email TEXT,
      contrasenia TEXT,
      fnacimiento TEXT,
      mascotanombre TEXT,
      mascotafnacimiento TEXT
      )
''');
    }, version: 1);
  }

  static Future<Future<int>> insert(Usuario usuario) async {
    Database database = await _openDB();

    return database.insert("usuarios", usuario.toMap());
  }

  static Future<Future<int>> delete(Usuario usuario) async {
    Database database = await _openDB();

    return database
        .delete("usuarios", where: "id = ?", whereArgs: [usuario.id]);
  }

  static Future<Future<int>> update(Usuario usuario) async {
    Database database = await _openDB();

    return database.update("usuarios", usuario.toMap(),
        where: "id = ?", whereArgs: [usuario.id]);
  }

  static Future<List<Usuario>> usuarios() async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> usuariosMap =
        await database.query("usuarios");

    return List.generate(
        usuariosMap.length,
        (i) => Usuario(
              id: usuariosMap[i]['id'],
              nombres: usuariosMap[i]['nombre'],
              apellidos: usuariosMap[i]['apellidos'],
              celular: usuariosMap[i]['celular'],
              email: usuariosMap[i]['email'],
              fnacimiento: usuariosMap[i]['fnacimiento'],
              contrasenia: usuariosMap[i]['contrasenia'],
              mascotafnacimiento: usuariosMap[i]['mascotanacimiento'],
              mascotanombre: usuariosMap[i]['mascotanombre'],
            ));
  }

  // CON SENTENCIAS
  // static Future<void> insertar2(Usuario usuario) async {
  //   Database database = await _openDB();
  //   var resultado =
  //       await database.rawInsert("INSERT INTO usuarios (id, nombre, especie)"
  //           " VALUES (${usuario.id}, ${usuario.nombre}, ${usuario.especie})");
  // }
}
