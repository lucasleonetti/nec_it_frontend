class Solicitud {
  final int id;
  final String descripcion;
  final String estado;
  final String prioridad;
  final String origen;

  Solicitud({
    required this.id,
    this.descripcion = '-',
    this.estado = '-',
    this.prioridad = '-',
    this.origen = '-',
  });

  factory Solicitud.fromJson(Map<String, dynamic> json) {
    return Solicitud(
      id: json['id'],
      descripcion: json['descripcion'],
      estado: json['estado'],
      prioridad: json['prioridad'],
      origen: json['origen'],
    );
  }

  factory Solicitud.toJson(Solicitud solicitud) {
    return Solicitud(
      id: 0,
      descripcion: '',
      estado: '',
      prioridad: '',
      origen: '',
    );
  }
}
