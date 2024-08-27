import '../models/user.dart';
import 'user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getAllUsers() async {
    return [
      User(id: 1, name: "Narmeshit", email: "narmeshit@gmail.com"),
      User(id: 2, name: 'John Doe', email: 'john.doe@gmail.com'),
      User(id: 3, name: 'Jane Doe', email: 'jane.doe@gmail.com'),
    ];
  }

  @override
  Future<User> getUserById(int id) async {
    var users = await getAllUsers();
    return users.firstWhere((user) => user.id == id);
  }
}
