//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:veterapp/homepage.dart';
import 'package:veterapp/main.dart';

class Mapa_veterinarias extends StatefulWidget {
  const Mapa_veterinarias({Key? key}) : super(key: key);

  @override
  State<Mapa_veterinarias> createState() => _Mapa_veterinariasState();
}

class _Mapa_veterinariasState extends State<Mapa_veterinarias> {
  final _initialCameraPosition =
      CameraPosition(target: LatLng(7.831646, -72.466759), zoom: 15);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Container(
      alignment: AlignmentDirectional.center,
      child: Column(
        children: [
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
          Expanded(
            child: SizedBox(
              // height: 500,
              // width: 350,
              child: GoogleMap(
                initialCameraPosition: _initialCameraPosition,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => VeterApp()));
            },
            child: Text("CERRAR SESIÓN"),
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.amber,
            ),
          ),
          IconoRedes(),
        ],
      ),
    )));
  }
}
