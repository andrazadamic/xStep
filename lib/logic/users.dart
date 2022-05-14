var _users = {};

bool checkIfUserExists(String username) {
  if (_users.containsKey(username)) {
    return true;
  } else {
    return false;
  }
}

void createUser(String username) {
  _users[username] = {
    "name" : username,
    "steps" : 0
  };
}