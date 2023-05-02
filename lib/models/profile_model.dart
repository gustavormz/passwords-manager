export 'profile_model.dart';

class Account {
  String name;
  String password;

  Account({
    required this.name,
    required this.password,
  });
}

class Profile {
  String name;
  List<Account> accounts = [];

  Profile({
    required this.name,
  });
}
