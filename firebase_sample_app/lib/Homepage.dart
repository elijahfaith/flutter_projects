import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/create_use_page.dart';
import 'package:test_app/services/api_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userList = ref.watch(userListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
      ),
      body: userList.when(
          data: (users) {
            return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                    // because we want to display two variable of firstName and LastName we use a $ symbol on each parameter
                    title: Text('${user.firstName} ${user.lastName}'),
                    subtitle: Text(user.email),
                  );
                });
          },
          error: (error, stack) => Text(error.toString()),
          loading: () => Center(child: CircularProgressIndicator())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateUserPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
