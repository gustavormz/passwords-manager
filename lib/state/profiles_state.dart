export 'profiles_state.dart';

import 'package:flutter/material.dart';

import '../models/profile_model.dart';

class ProfilesState extends ChangeNotifier {
  final List<Profile> _profiles = [];

  void addNewProfile(String profileName) {
    Profile newProfile = Profile(name: profileName);
    _profiles.add(newProfile);
    notifyListeners();
  }

  void addNewPasswordAccount(
      String profileName, String accountName, String password) {
    Profile profileToAddAccount =
        _profiles.firstWhere((profile) => profile.name == profileName);
    Account newAccount = Account(name: accountName, password: password);
    profileToAddAccount.accounts.add(newAccount);
    notifyListeners();
  }

  Profile getProfileByName(String accountName) {
    Profile profileFound =
        _profiles.firstWhere((profile) => profile.name == accountName);
    return profileFound;
  }

  void initializeProfiles() {
    for (int i = 0; i < 5; i++) {
      Profile newProfile = Profile(name: 'Test name $i');
      _profiles.add(newProfile);
    }
    notifyListeners();
  }

  List<Profile> get profiles => _profiles;
}
