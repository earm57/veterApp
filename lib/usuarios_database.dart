// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:veterapp/models.dart';

// class UsuarioDatabase {
//   static final UsuarioDatabase instance = UsuarioDatabase._init();

//   static Database? _database;

//   UsuarioDatabase._init();

//   final String tablaUsuarios = 'usuarios';

//   Future<Database> get database async {
//     _database = await _initDB('usuarios.db');
//     if (_database != null) return _database!;
//     return _database!;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);

//     return await openDatabase(path, onCreate: _onCreateDB);
//   }

//   Future _onCreateDB(Database db, int version) async {
//     await db.execute('''
//     CREATE  TABLE $tablaUsuarios(
//       id INTEGER PRIMARY KEY,
//       nombres TEXT,
//       apellidos TEXT,
//       celuLar INTEGER,
//       email TEXT,
//       contrasenia TEXT,
//       fnacimiento TEXT,
//       mascotanombre TEXT,
//       mascotafnacimiento TEXT
//       )
// ''');
//   }

//   Future<void> insert(Usuarioitem item) async {
//     final db = await instance.database;
//     await db.insert(tablaUsuarios, item.toMap());
//   }
// }
