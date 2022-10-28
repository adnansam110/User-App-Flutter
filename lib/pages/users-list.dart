import 'package:flutter/material.dart';
import 'package:http/http.dart';
import "dart:convert";
import 'package:user_app/widgets/loading-widgets.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List users = [];

  void getUsersData() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    Response response = await get(url);
    List data = jsonDecode(response.body);
    setState(() {
      users = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getUsersData();
  }

  @override
  Widget build(BuildContext context) {
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
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('lib/assets/avatar.png'),
                              radius: 30,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10.0),
                                Text(
                                  user["name"].toString().length > 40
                                      ? user["name"]
                                              .toString()
                                              .substring(0, 40) +
                                          '...'
                                      : user["name"].toString(),
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
