import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:veterapp/homepage.dart';
import 'package:veterapp/main.dart';
import 'package:veterapp/menu_principal.dart';
import 'package:veterapp/models.dart';
import 'package:veterapp/bbddVeterApp.dart';
import 'package:veterapp/redessociales.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController apellidoCtrl = new TextEditingController();
  TextEditingController celularCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController contrasenaCtrl = new TextEditingController();
  TextEditingController fnacimientoCtrl = new TextEditingController();
  TextEditingController masnombreCtrl = new TextEditingController();
  TextEditingController masfnacimientoCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Primera App")),
      body: Container(
          margin: EdgeInsets.only(top: 25, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Stack(children: [
                      SizedBox(
                          width: double.infinity,
                          height: 150,
                          child: Image.asset(
                            "assets/images/IconoVeterApp.png",
                            scale: 1.5,
                          )),
                      Positioned(
                        right: 1,
                        child: CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          child: const Text(
                            'VA',
                            style: TextStyle(fontSize: 35),
                          ),
                          radius: 35,
                        ),
                      )
                    ]),
                    Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              etiquetas(name: "Nombres"),
                              Container(
                                  child: Expanded(
                                      child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return "Obligatorio";
                                  return null;
                                },
                                controller: nombreCtrl,
                                keyboardType: TextInputType.name,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(6),
                                  border: OutlineInputBorder(),
                                ),
                              )))
                            ])),
                    Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              etiquetas(name: "Apellidos"),
                              Container(
                                  child: Expanded(
                                      child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return "Obligatorio";
                                  return null;
                                },
                                controller: apellidoCtrl,
                                keyboardType: TextInputType.name,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(6),
                                  border: OutlineInputBorder(),
                                ),
                              )))
                            ])),
                    Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              etiquetas(name: "Celular"),
                              Container(
                                  child: Expanded(
                                      child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return "Obligatorio";
                                  return null;
                                },
                                controller: celularCtrl,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(6),
                                  border: OutlineInputBorder(),
                                ),
                              )))
                            ])),
                    Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              etiquetas(name: "Email"),
                              Container(
                                  child: Expanded(
                                      child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return "Obligatorio";
                                  return null;
                                },
                                controller: emailCtrl,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(6),
                                  border: OutlineInputBorder(),
                                ),
                              )))
                            ])),
                    Container(
                        //margin: EdgeInsets.only(bottom: 0.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          etiquetas(name: "Contraseña"),
                          Container(
                              child: Expanded(
                                  child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Obligatorio";
                              return null;
                            },
                            obscureText: true,
                            controller: contrasenaCtrl,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(6),
                              border: OutlineInputBorder(),
                            ),
                          )))
                        ])),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          etiquetas(name: "Fecha de Nacimiento"),
                          Container(
                              child: Expanded(
                                  child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Obligatorio";
                              return null;
                            },
                            controller: fnacimientoCtrl,
                            keyboardType: TextInputType.datetime,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(6),
                              hintText: ("AAAAMMDD"),
                              border: OutlineInputBorder(),
                            ),
                          )))
                        ]),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "MASCOTA",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        //margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          etiquetas(name: "Nombre"),
                          Container(
                              child: Expanded(
                                  child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Obligatorio";
                              return null;
                            },
                            controller: masnombreCtrl,
                            keyboardType: TextInputType.name,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(6),
                              border: OutlineInputBorder(),
                            ),
                          )))
                        ])),
                    Container(
                        //margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          etiquetas(name: "Fecha de Nacimiento"),
                          Container(
                              child: Expanded(
                                  child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Obligatorio";
                              return null;
                            },
                            controller: masfnacimientoCtrl,
                            keyboardType: TextInputType.name,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(6),
                              hintText: ("AAAAMMDD"),
                              border: OutlineInputBorder(),
                            ),
                          )))
                        ])),
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formkey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          var ingresoUsuario = Usuario(
                              id: 0,
                              nombres: nombreCtrl.text,
                              apellidos: apellidoCtrl.text,
                              celular: int.parse(celularCtrl.text),
                              email: emailCtrl.text,
                              contrasenia: contrasenaCtrl.text,
                              fnacimiento: fnacimientoCtrl.text,
                              mascotafnacimiento: masfnacimientoCtrl.text,
                              mascotanombre: masnombreCtrl.text);
                          print(ingresoUsuario);
                          insertarUsuario(ingresoUsuario);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomepageVeterApp()));
                        }
                      },
                      child: Text("REGISTRAR"),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.amber,
                      ),
                    ),
                    const IconoRedes(),
                  ],
                )),
          )),
    );
  }

  void insertarUsuario(Usuario ingresoUsuario) {
    UsuarioDatabase.instance.insertUsuario(ingresoUsuario);
  }
}

class etiquetas extends StatelessWidget {
  final String name;

  const etiquetas({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 90,
      child: Text(
        name + ": ",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        overflow: TextOverflow.clip,
      ),
    );
  }
}

void main() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'usuario_database.db'),
    // When the database is first created, create a table to store dogs.
    onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.
      return db.execute(
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
    },
    // Establece la versión. Esto ejecuta la función onCreate y proporciona una
    // ruta para realizar actualizacones y defradaciones en la base de datos.
    version: 1,
  );

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
      // Aseguúrate de que solo actualizarás el Usuario con el id coincidente
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

  // var fido = Usuario(
  //   id: 0,
  //   nombres: 'Fido',
  //   apellidos: 35,
  // );

  // Inserta un usuario en la base de datos
  //await insertUsuario(fido);

  // Imprime la lista de usuarios (solamente Fido por ahora)
  print(await usuarios());

  // Actualiza la edad de Fido y lo guarda en la base de datos
  // fido = Usuario(
  //   id: fido.id,
  //   nombres: fido.nombres,
  //   apellidos: fido.apellidos + 7,
  // );
  // await updateUsuario(fido);

  // Imprime la información de Fido actualizada
//   print(await usuarios());

//   // Elimina a Fido de la base de datos
//   await deleteUsuario(fido.id);

//   // Imprime la lista de dos (vacía)
//   print(await usuarios());
// }

// class Usuario {
//   final int id;
//   final String nombres;
//   final int apellidos;

//   Usuario({required this.id, required this.nombres, required this.apellidos});

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'nombres': nombres,
//       'apellidos': apellidos,
//     };
//   }

//   // Implementa toString para que sea más fácil ver información sobre cada perro
//   // usando la declaración de impresión.
//     @override
//     String toString() {
//       return 'Usuario{id: $id, nombres: $nombres, apellidos: $apellidos}';
//     }
}
