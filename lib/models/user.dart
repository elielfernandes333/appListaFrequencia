class User {
  final String? id;
  final String name;
  final String cpf;
  final String evento;
  final String avatarUrl;

  const User({
    this.id,
    required this.name,
    required this.cpf,
    required this.evento,
    required this.avatarUrl,

  });
}