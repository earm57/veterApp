import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:veterapp/models.dart';

class UsuarioDatabase {
  static final UsuarioDatabase instance = UsuarioDatabase._init();

  static Database? _database;

  UsuarioDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('usuarios_db.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {
    await db.execute(
      '''
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
      )''',
    );
  }

  Future<void> insertUsuario(Usuario usuario) async {
    // Obtiene una referencia de la base de datos
    final Database db = await database;

    // Inserta el Usuario en la tabla correcta. También puede especificar el
    // `conflictAlgorithm` para usar en caso de que el mismo Usuario se inserte dos veces.
    // En este caso, reemplaza cualquier dato anterior.
    await db.insert(
      'usuarios',
      usuario.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Usuario>> usuarios() async {
    // Obtiene una referencia de la base de datos
    final Database db = await database;

    // Consulta la tabla por todos los Usuarios.
    final List<Map<String, dynamic>> maps = await db.query('usuarios');

    // Convierte List<Map<String, dynamic> en List<Usuario>.
    return List.generate(maps.length, (i) {
      return Usuario(
          id: maps[i]['id'],
          nombres: maps[i]['nombres'],
          apellidos: maps[i]['apellidos'],
          celular: maps[i]['celular'],
          email: maps[i]['email'],
          contrasenia: maps[i]['contrasenia'],
          fnacimiento: maps[i]['fnacimiento'],
          mascotafnacimiento: maps[i]['mascotafnacimiento'],
          mascotanombre: maps[i]['mascotanombre']);
    });
  }

  Future<void> updateUsuario(Usuario usuario) async {
    // Obtiene una referencia de la base de datos
    final db = await database;

    // Actualiza el Usuario dado
    await db.update(
      'usuarios',
      usuario.toMap(),
      // Aseguramos que solo actualizara el Usuario con el id coincidente
      where: "id = ?",
      // Pasa el id Usuario a través de whereArg para prevenir SQL injection
      whereArgs: [usuario.id],
    );
  }

  Future<void> deleteUsuario(int id) async {
    // Obtiene una referencia de la base de datos
    final db = await database;
    // Elimina el Usuario de la base de datos
    await db.delete(
      'usuarios',
      // Utiliza la cláusula `where` para eliminar un usuario específico
      where: "id = ?",
      // Pasa el id Usuario a través de whereArg para prevenir SQL injection
      whereArgs: [id],
    );
  }
}
