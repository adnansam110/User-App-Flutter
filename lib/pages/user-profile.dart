import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  // ignore: prefer_typing_uninitialized_variables
  var user;
  @override
  Widget build(BuildContext context) {
    user = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: Text(
          "User Profile",
          style: TextStyle(color: Colors.grey[200]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 50.0,
                    backgroundImage: NetworkImage(user["picture"]["thumbnail"]),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    user["name"]["first"],
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      fontSize: 25.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    user["email"],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Address:",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 7.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Street: ",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          "${user["location"]["name"]}",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: [
                        Text(
                          "City: ",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          "${user["location"]["city"]}",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: [
                        Text(
                          "Zip Code: ",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          "${user["location"]["postcode"]}",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
