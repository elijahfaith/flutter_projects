import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/services/api_provider.dart';

class CreateUserPage extends ConsumerWidget {
  CreateUserPage({super.key});
  final _nameController = TextEditingController();
  final _jobController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create User Page"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _jobController,
              decoration: const InputDecoration(labelText: 'Job'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  final name = _nameController.text;
                  final job = _jobController.text;
                  await ref.read(userProvider.notifier).createUser(name, job);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
