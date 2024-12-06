import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/services/apiService.dart';
import 'package:test_app/services/creat_user_model.dart';
import 'package:test_app/services/user_model.dart';

// apiservice provider
final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});

// User provider to fetch users from the api.
final userListProvider = FutureProvider<List<User>>((ref) async {
  return ref.watch(apiServiceProvider).fetchUser();
});

// creating provider to allow read the api

final userProvider = StateNotifierProvider<UserNotifier, CreateUser?>((ref) {
  return UserNotifier(ref.read(apiServiceProvider));
});

// creating provider to store data
class UserNotifier extends StateNotifier<CreateUser?> {
  final ApiService apiService;
  UserNotifier(this.apiService) : super(null);

  Future<void> createUser(String name, String job) async {
    try {
      final user = await apiService.createUser(name, job);
      state = user;
    } catch (e) {
      state = null;
    }
  }
}
