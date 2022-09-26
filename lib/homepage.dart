import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:veterapp/menu_principal.dart';
import 'package:veterapp/redessociales.dart';
import 'package:veterapp/registro.dart';

class HomepageVeterApp extends StatefulWidget {
  const HomepageVeterApp({super.key});

  @override
  State<HomepageVeterApp> createState() => _HomepageVeterAppState();
}

class _HomepageVeterAppState extends State<HomepageVeterApp> {
  TextEditingController inicioemailctrl = new TextEditingController();
  TextEditingController iniciocontrasenaCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    const appTitle = 'VeterApp';
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.asset('assets/images/IconoVeterApp.png')),
      Padding(
        padding: EdgeInsets.all(5),
        child: Text(
          'Iniciar sesión',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 24),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        child: TextField(
          controller: inicioemailctrl,
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
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/menu');
        },
        child: Text("INGRESAR"),
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: Colors.amber,
        ),
      ),
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
          // PENDIENTE LÓGICA PARA VALIDAR CORREO Y CONTRASEÑA E INICIAR SESIÓN.
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Registro()));
        },
        child: const Text('REGÍSTRATE',
            style: TextStyle(decoration: TextDecoration.underline)),
      ),
      const IconoRedes(),
    ])));
  }
}
