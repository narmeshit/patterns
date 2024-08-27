import 'package:flutter/material.dart';

import '../models/user.dart';
import '../repository/user_repository_impl.dart';
import '../services/user_service.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final UserService userService =
      UserService(userRepository: UserRepositoryImpl());
  List<User> users = [];
  bool isLoading = true;
  String? errorMessage;

  List<User> apiUsers = [];
  bool isApiLoading = true;
  String? errorApiMessage;

  @override
  void initState() {
    super.initState();
    _loadUsers();
    _loadApiUsers();
  }

  Future<void> _loadUsers() async {
    try {
      List<User> fetchedUsers = await userService.fetchUsers();
      setState(() {
        users = fetchedUsers;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = 'Error al cargar usuarios: $e';
        isLoading = false;
      });
    }
  }

  Future<void> _loadApiUsers() async {
    try {
      List<User> fetchedApiUsers = await userService.fetchApiUsers();
      setState(() {
        apiUsers = fetchedApiUsers;
        isApiLoading = false;
      });
    } catch (e) {
      setState(() {
        errorApiMessage = 'Error al cargar usuarios: $e';
        isApiLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patron Repository - Usuarios'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Data Local',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            Expanded(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : errorMessage != null
                      ? Center(
                          child: Text(errorMessage!),
                        )
                      : users.isEmpty
                          ? const Center(
                              child: Text('No tiene usuarios'),
                            )
                          : ListView.builder(
                              itemCount: users.length,
                              itemBuilder: (context, index) {
                                final user = users[index];
                                return ListTile(
                                  title: Text(user.name),
                                  subtitle: Text(user.email),
                                );
                              },
                            ),
            ),
            Row(
              children: [
                Text(
                  'Data Remoto',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            Flexible(
              child: isApiLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : errorApiMessage != null
                      ? Center(
                          child: Text(errorApiMessage!),
                        )
                      : apiUsers.isEmpty
                          ? const Center(
                              child: Text('No tiene usuarios la Api'),
                            )
                          : ListView.builder(
                              itemCount: apiUsers.length,
                              itemBuilder: (context, index) {
                                final user = apiUsers[index];
                                return ListTile(
                                  title: Text(user.name),
                                  subtitle: Text(user.email),
                                );
                              },
                            ),
            ),
          ],
        ),
      ),
    );
  }
}
