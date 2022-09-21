import 'package:flutter/material.dart';
import 'package:veterapp/mapas.dart';
import 'package:veterapp/main.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/RegistroCita.png",
                            scale: 2,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () {},
                            child: const Text('Registro mascota',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ])),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/AgendarCita.png",
                            scale: 2.3,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () {},
                            child: const Text('Agendar cita',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ])),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/HistoriaClinica.png",
                            scale: 1.3,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () {},
                            child: const Text('Historia clínica',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ])),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/Mapas.png",
                            scale: 1,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()));
                            },
                            child: const Text('Veterinarias cercanas',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ])),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VeterApp()));
                  },
                  child: Text("CERRAR SESIÓN"),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.amber,
                  ),
                ),
                const IconoRedes(),
              ],
            ))));
  }
}
