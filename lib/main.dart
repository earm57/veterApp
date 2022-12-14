import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:veterapp/homepage.dart';
import 'package:veterapp/mapsVeter.dart';
import 'package:veterapp/menu_principal.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(VeterApp()));
}

class VeterApp extends StatelessWidget {
  const VeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green[300],
        colorSchemeSeed: Color(0XB5AC49),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomepageVeterApp(),
        '/menu': (context) => const MenuPrincipal(),
        '/mapa': (context) => const Mapa_veterinarias(),
      },
    );
  }
}
