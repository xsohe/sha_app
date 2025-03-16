class UserModel {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? password;
  final int? verified;
  final String? profilePicture;
  final int? balance;
  final String? cardNumber;
  final String? pin;
  final String? token;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.verified,
    this.profilePicture,
    this.balance,
    this.cardNumber,
    this.pin,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        password: json['password'],
        verified: json['verified'],
        profilePicture: json['profile_picture'],
        balance: json['balance'],
        cardNumber: json['card_number'],
        pin: json['pin'],
        token: json['token'],
      );

  UserModel copyWith({
    String? username,
    String? name,
    String? email,
    String? password,
    String? pin,
    int? balance,
  }) =>
      UserModel(
        id: id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        pin: pin ?? this.pin,
        balance: balance ?? this.balance,
        verified: verified,
        profilePicture: profilePicture,
        cardNumber: cardNumber,
        token: token,
      );
}
