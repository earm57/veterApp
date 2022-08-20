import 'package:flutter/material.dart';
import 'package:veterapp/main.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _claveFormulario = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Primera App")),
      body: Container(
          child: SingleChildScrollView(
              child: Form(
                  key: _claveFormulario,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.all(20),
                          child:
                              Image.asset("assets/images/IconoVeterApp.png")),
                      etiquetas(name: "Nombres"),
                      etiquetas(name: "Apellidos"),
                      etiquetas(name: "Celular"),
                      etiquetas(name: "Email"),
                      etiquetas(name: "Contraseña"),
                      etiquetas(name: "Fecha de Nacimiento"),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("REGISTRAR"),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.amber,
                        ),
                      ),
                    ],
                  )))),
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
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 90,
                  child: Text(
                    name + ": ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.clip,
                  )),
              Container(
                  child: Expanded(
                      child: const SizedBox(
                          height: 30,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          )))),
            ]));
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
