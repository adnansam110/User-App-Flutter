import 'package:flutter/material.dart';
import 'package:user_app/pages/users-list.dart';
import 'package:user_app/pages/user-profile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => UsersList(),
      '/user-profile': (context) => UserProfile(),
    },
  ));
}
