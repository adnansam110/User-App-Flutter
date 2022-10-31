import 'dart:ffi';

import "package:flutter/material.dart";

class Users extends ChangeNotifier {
  var _users = [];

  get users => _users;

  void setUsers(payload) {
    _users = payload;
    notifyListeners();
  }
}
