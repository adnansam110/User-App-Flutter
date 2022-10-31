import 'package:flutter/material.dart';
import 'package:user_app/widgets/loading-widgets.dart';
import 'package:provider/provider.dart';
import 'package:user_app/providers/users_provider.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  void getUsersData() async {
    context.read<Users>().getUsers();
  }

  @override
  void initState() {
    super.initState();
    getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    List users = context.watch<Users>().users;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: Text(
          "Users",
          style: TextStyle(color: Colors.grey[200]),
        ),
      ),
      body: users?.length == 0
          ? Loader()
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: ListView(
                  children: users.map((user) {
                    return Card(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage(user["picture"]["thumbnail"]),
                              radius: 30,
                              backgroundColor: Colors.grey,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10.0),
                                Text(
                                  user["name"]["first"].toString().length > 40
                                      ? user["name"]["first"]
                                              .toString()
                                              .substring(0, 40) +
                                          '...'
                                      : user["name"]["first"].toString(),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                                Text(
                                  user['email'],
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat",
                                    fontSize: 10.0,
                                  ),
                                ),
                                const SizedBox(height: 5.0),
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue[300],
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/user-profile',
                                        arguments: user,
                                      );
                                    },
                                    child: const Text(
                                      "View Details",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Montserrat",
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
    );
  }
}
