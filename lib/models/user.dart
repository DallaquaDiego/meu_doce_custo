class User {
  int? id;
  String email;

  User({
    this.id,
    required this.email,
  });

  @override
  String toString() {
    return 'User{id: $id, email: $email}';
  }

  factory User.fromMap(Map<String, dynamic> json) => (User(
    id: json['id'] ?? '',
    email: json['email'] ?? '',
  ));

  Map<String, dynamic> toMap() => {
    "id": id,
    "email": email,
  };
}
