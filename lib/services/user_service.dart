import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user.dart';
import '../repository/user_repository.dart';

class UserService {
  final UserRepository userRepository;

  final String apiUrl = 'https://jsonplaceholder.typicode.com/users';

  UserService({required this.userRepository});

  Future<List<User>> fetchUsers() {
    return userRepository.getAllUsers();
  }

  Future<User> fetchUserById(int id) {
    return userRepository.getUserById(id);
  }

  Future<List<User>> fetchApiUsers() async {
    final res = await http.get(Uri.parse(apiUrl));
    if (res.statusCode == 200) {
      List<dynamic> body = json.decode(res.body);
      List<User> users =
          body.map((dynamic data) => User.fromJson(data)).toList();
      return users;
    }else{
      throw Exception('Falló la carga de usuarios');
    }
  }
}
