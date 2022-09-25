class Usuario {
  final int id;
  final String nombres;
  final String apellidos;
  final int celular;
  final String email;
  final String contrasenia;
  final String fnacimiento;
  final String mascotafnacimiento;
  final String mascotanombre;

  Usuario({
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.celular,
    required this.email,
    required this.contrasenia,
    required this.fnacimiento,
    required this.mascotafnacimiento,
    required this.mascotanombre,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombres': nombres,
      'apellidos': apellidos,
      'celular': celular,
      'email': email,
      'contrasenia': contrasenia,
      'fnacimiento': fnacimiento,
      'mascotafnacimiento': mascotafnacimiento,
      'mascotanombre': mascotanombre,
    };
  }

  @override
  String toString() {
    return 'Usuario{id: $id, nombres: $nombres, apellidos: $apellidos celular: $celular email $email contrasenia $contrasenia fnacimineto: $fnacimiento mascotafnacimiento: $mascotafnacimiento mascotanombre: $mascotanombre}';
  }
}
