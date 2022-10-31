import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/pages/users-list.dart';
import 'package:user_app/pages/user-profile.dart';
import 'package:user_app/providers/users_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: ((context) => Users()))],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => UsersList(),
          '/user-profile': (context) => UserProfile(),
        },
      ),
    ),
  );
}
