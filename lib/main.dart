import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:veterapp/menu_principal.dart';
import 'package:veterapp/registro.dart';

void main() => runApp(const VeterApp());

class VeterApp extends StatelessWidget {
  const VeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'VeterApp';
    return MaterialApp(
      theme: ThemeData(
        //primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.green[300],
        colorSchemeSeed: Color(0XB5AC49), useMaterial3: true,
      ),
      title: appTitle,
      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        Container(
            margin: EdgeInsets.only(top: 20),
            child: Image.asset('assets/images/IconoVeterApp.png')),
        textoiniciarsesion,
        const FormularioInicioSesion(),
        const BotonIngresar(),
        const RegistroYOlvido(),
        const IconoRedes(),
      ]))),
    );
  }
}

///////////////CLASES////////////////////////

class BotonIngresar extends StatefulWidget {
  const BotonIngresar({Key? key}) : super(key: key);

  @override
  State<BotonIngresar> createState() => _BotonIngresarState();
}

class _BotonIngresarState extends State<BotonIngresar> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      onPrimary: Theme.of(context).colorScheme.onPrimary,
      // Background color
      primary: Theme.of(context).colorScheme.primary,
    ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MenuPrincipal()));
            },
            child:
                const Text('INGRESAR', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

final textoiniciarsesion = Padding(
  padding: EdgeInsets.all(5),
  child: Text(
    'Iniciar sesión',
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.w800, fontSize: 24),
  ),
);

class FormularioInicioSesion extends StatefulWidget {
  const FormularioInicioSesion({super.key});

  @override
  State<FormularioInicioSesion> createState() => _FormularioInicioSesionState();
}

class _FormularioInicioSesionState extends State<FormularioInicioSesion> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent,
              border: OutlineInputBorder(),
              hintText: 'email',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent,
              border: OutlineInputBorder(),
              hintText: 'contraseña',
            ),
            obscureText: true,
          ),
        ),
      ],
    ));
  }
}

class RegistroYOlvido extends StatelessWidget {
  const RegistroYOlvido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 12),
            ),
            onPressed: () {},
            child: const Text('¿OLVIDASTE TU CONTRASEÑA?',
                style: TextStyle(decoration: TextDecoration.underline)),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 12),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Registro()));
            },
            child: const Text('REGÍSTRATE',
                style: TextStyle(decoration: TextDecoration.underline)),
          ),
        ],
      ),
    );
  }
}

class IconoRedes extends StatelessWidget {
  const IconoRedes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: FaIcon(FontAwesomeIcons.facebook),
            onPressed: () {
              print("Pressed");
            }),
        IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              print("Pressed");
            }),
        IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: FaIcon(FontAwesomeIcons.instagramSquare),
            onPressed: () {
              print("Pressed");
            })
      ],
    ));
  }
}
