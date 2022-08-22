import 'dart:html';

import 'package:flutter/material.dart';

class FormularioRegistro extends StatefulWidget {
  @override
  _FormularioRegistroState createState() => _FormularioRegistroState();
}

class _FormularioRegistroState extends State<FormularioRegistro> {
  GlobalKey<FormState> _llaveformulario = new GlobalKey();
  TextEditingController nombreCtrl = new TextEditingController();
  TextEditingController appelidoCtrl = new TextEditingController();
  TextEditingController celularCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController contrasenaCtrl = new TextEditingController();
  TextEditingController fnacimientoCtrl = new TextEditingController();
  TextEditingController masnombreCtrl = new TextEditingController();
  TextEditingController masfnacimientoCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(20.0),
        ),
      ),
    ));
  }
}
