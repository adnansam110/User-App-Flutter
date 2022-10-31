import "package:flutter/material.dart";
import 'package:user_app/services/users_api_calls.dart';

class Users extends ChangeNotifier {
  // _users is the state variable
  var _users = [];
  // users is the get method through which we can get the satte in different widgets
  get users => _users;
  // getUsers is an action/method that gets the users list and updates the state
  void getUsers() async {
    var usersData = await UsersApiClient().getUsersData();
    _users = usersData;
    // notifyListeneres() need to run to notify all the listeners that the state have been updated so they can update the UI
    notifyListeners();
  }
}
