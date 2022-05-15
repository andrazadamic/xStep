import 'dart:collection';

import 'package:flutter/material.dart';

Map _users = {
  "ajo": <String>["ajo", "4761", "69"],
  "matjec": <String>["matjec", "28980", "420"],
  "timmy": <String>["timmy", "1449", "21"]
};
var _curr_user = "";

bool checkIfUserExists(String username) {
  if (_users.containsKey(username)) {
    return true;
  } else {
    return false;
  }
}

void changePoints(int points) {
  int res = int.parse(_users[_curr_user][2]) + points;
  _users[_curr_user][2] = res.toString();
}

Map sort(Map users) {
  return SplayTreeMap<String, dynamic>.from(
    users, (keys1, keys2) => int.parse(users[keys2]![1]).compareTo(int.parse(users[keys1]![1]))
  );
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
  _users = sort(_users);
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
