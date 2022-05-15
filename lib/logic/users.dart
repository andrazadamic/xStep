import 'package:flutter/material.dart';

var _users = {
  "ajo": <String>["ajo", "4761", "69"],
  "matjec": <String>["matjec", "28980", "420"]
};
var _curr_user = "";

bool checkIfUserExists(String username) {
  if (_users.containsKey(username)) {
    return true;
  } else {
    return false;
  }
}

void createUser(String username) {
  _users[username] = [username, "0", "0"];
}

void setCurrentUser(String username) {
  _curr_user = username;
}

String getUsersPoints() {
  return _users[_curr_user]![2];
}

String getUsersSteps() {
  return _users[_curr_user]![1];
}

Widget createLeaderboard() {
  return Column(
      children: _users.entries.map((entry) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      child: SizedBox(
        height: 50.0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [BoxShadow(offset: Offset(5.0, 5.0))]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(entry.value[0].toString()),
                Text(entry.value[1].toString())
              ],
            ),
          ),
        ),
      ),
    );
  }).toList());
}
