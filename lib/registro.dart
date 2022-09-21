import 'package:flutter/material.dart';
import 'package:veterapp/main.dart';
import 'package:veterapp/menu_principal.dart';

class Registro extends StatefulWidget {
  //const Registro({super.key});

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  // late TextEditingController _controller;
  //GlobalKey<FormState> _llaveformulario = new GlobalKey();
  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController appelidoCtrl = new TextEditingController();
  TextEditingController celularCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController contrasenaCtrl = new TextEditingController();
  TextEditingController fnacimientoCtrl = new TextEditingController();
  TextEditingController masnombreCtrl = new TextEditingController();
  TextEditingController masfnacimientoCtrl = new TextEditingController();
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = TextEditingController();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Primera App")),
      body: Container(
          margin: EdgeInsets.only(top: 25, left: 10, right: 10),
          child: SingleChildScrollView(
              //key: _claveFormulario,
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
              // Container(
              //     margin: EdgeInsets.all(5),
              //     child: Row(children: [
              //       Image.asset("assets/images/IconoVeterApp.png"),
              //       CircleAvatar(
              //         backgroundColor: Colors.brown.shade800,
              //         child: const Text(
              //           'AH',
              //           style: TextStyle(fontSize: 40),
              //         ),
              //         radius: 40,
              //       )
              //     ])),
              Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        etiquetas(name: "Nombres"),
                        Container(
                            child: Expanded(
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      controller: nombreCtrl,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ))))
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
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      controller: appelidoCtrl,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ))))
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
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      controller: celularCtrl,
                                      keyboardType: TextInputType.phone,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ))))
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
                                child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      controller: nombreCtrl,
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ))))
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
                            child: SizedBox(
                                height: 30,
                                child: TextField(
                                  obscureText: true,
                                  controller: contrasenaCtrl,
                                  keyboardType: TextInputType.visiblePassword,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ))))
                  ])),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    etiquetas(name: "Fecha de Nacimiento"),
                    Container(
                        child: Expanded(
                            child: SizedBox(
                                height: 30,
                                child: TextField(
                                  controller: fnacimientoCtrl,
                                  keyboardType: TextInputType.datetime,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ))))
                  ]),
              Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "MASCOTA",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                            child: SizedBox(
                                height: 30,
                                child: TextField(
                                  controller: masnombreCtrl,
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ))))
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
                            child: SizedBox(
                                height: 30,
                                child: TextField(
                                  controller: masfnacimientoCtrl,
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ))))
                  ])),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuPrincipal()));
                },
                child: Text("REGISTRAR"),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.amber,
                ),
              ),
              const IconoRedes(),
            ],
          ))),
    );
  }
}

class etiquetas extends StatelessWidget {
  final String name;

  const etiquetas({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (name == "Contraseña") {
    //   return Container(
    //       padding: EdgeInsets.all(5),
    //       child: Row(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //                 width: 90,
    //                 child: Text(
    //                   name + ": ",
    //                   style:
    //                       TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    //                   overflow: TextOverflow.clip,
    //                 )),
    //             Container(
    //                 child: Expanded(
    //                     child: const SizedBox(
    //                         height: 30,
    //                         child: TextField(
    //                           obscureText: true,
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                           ),
    //                           decoration: InputDecoration(
    //                             border: OutlineInputBorder(),
    //                           ),
    //                         )))),
    //           ]));
    // }
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

// class Registro extends StatelessWidget {
//   const Registro({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Este es el registro')),
//         body: Column(children: [
//           Image.asset('images/IconoVeterApp.png'),
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               // hintText: 'What do people call you?',
//               labelText: 'Nombres *',
//             ),
//             onSaved: (String? value) {
//               // This optional block of code can be used to run
//               // code when the user saves the form.
//             },
//             validator: (String? value) {
//               return (value != null && value.contains('@'))
//                   ? 'Do not use the @ char.'
//                   : null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               // hintText: 'What do people call you?',
//               labelText: 'Apellidos *',
//             ),
//             onSaved: (String? value) {
//               // This optional block of code can be used to run
//               // code when the user saves the form.
//             },
//             validator: (String? value) {
//               return (value != null && value.contains('@'))
//                   ? 'Do not use the @ char.'
//                   : null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: Icon(Icons.mobile_friendly),
//               // hintText: 'What do people call you?',
//               labelText: 'Celular *',
//             ),
//             onSaved: (String? value) {
//               // This optional block of code can be used to run
//               // code when the user saves the form.
//             },
//             validator: (String? value) {
//               return (value != null && value.contains('@'))
//                   ? 'Do not use the @ char.'
//                   : null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: Icon(Icons.email),
//               // hintText: 'What do people call you?',
//               labelText: 'Email *',
//             ),
//             onSaved: (String? value) {
//               // This optional block of code can be used to run
//               // code when the user saves the form.
//             },
//           ),
//           TextFormField(
//             obscureText: true,
//             decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               // hintText: 'What do people call you?',
//               labelText: 'Contraseña *',
//             ),
//             onSaved: (String? value) {
//               // This optional block of code can be used to run
//               // code when the user saves the form.
//             },
//             // validator: (String? value) {
//             //   return (value != null && value.contains('@'))
//             //       ? 'Do not use the @ char.'
//             //       : null;
//             // },
//           ),
//           const BotonRegresar(),
//         ]));
//   }
// }

// class BotonRegresar extends StatefulWidget {
//   const BotonRegresar({Key? key}) : super(key: key);

//   @override
//   State<BotonRegresar> createState() => _BotonRegresarState();
// }

// class _BotonRegresarState extends State<BotonRegresar> {
//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style = ElevatedButton.styleFrom(
//       textStyle: const TextStyle(fontSize: 20),
//       onPrimary: Theme.of(context).colorScheme.onPrimary,
//       // Background color
//       primary: Theme.of(context).colorScheme.primary,
//     ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0));

//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: style,
//             onPressed: () {},
//             child:
//                 const Text('INGRESAR', style: TextStyle(color: Colors.black)),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Widget nombres = const Padding(
// //   padding: EdgeInsets.all(5),
// //   child: TextField(
// //     decoration: InputDecoration(
// //       filled: true,
// //       fillColor: Colors.greenAccent,
// //       border: OutlineInputBorder(),
// //       hintText: 'email',
// //     ),
// //   ),
// // );
