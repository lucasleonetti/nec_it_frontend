class Colaborator {
  final int id;
  final String name;
  final String email;

  Colaborator({
    required this.id,
    this.name = '-',
    this.email = '-',
  });

  factory Colaborator.fromJson(Map<String, dynamic> json) {
    return Colaborator(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  factory Colaborator.toJson(Colaborator colaborator) {
    return Colaborator(
      id: 0,
      name: '-',
      email: '-',
    );
  }
}
