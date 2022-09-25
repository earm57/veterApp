class Usuario {
  int id;
  String nombres;
  String apellidos;
  int celular;
  String email;
  String contrasenia;
  String fnacimiento;
  String mascotafnacimiento;
  String mascotanombre;

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
}
