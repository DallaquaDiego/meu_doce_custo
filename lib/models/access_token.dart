import 'user.dart';

class AccessToken {
  User? user;
  String accessToken;

  AccessToken({
    this.user,
    required this.accessToken,
  });

  @override
  String toString() {
    return 'AccessToken{user: $user, accessToken: $accessToken}';
  }

  factory AccessToken.fromMap(Map<String, dynamic> json) => AccessToken(
    user: User.fromMap(json['user'] ?? {}),
    accessToken: json['AccessToken'] ?? '',
  );

  Map<String, dynamic> toMap() => {
    "user": user,
    "AccessToken": accessToken,
  };
}
