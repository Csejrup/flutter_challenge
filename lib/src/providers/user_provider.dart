import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/user_repository.dart';
import '../models/user.dart';

class AsyncUserNotifier extends AsyncNotifier<List<User>> {
  AsyncUserNotifier(this._userRepository) : super() {
    _fetchUsers();
  }
  final UserRepository _userRepository;

  Future<List<User>> _fetchUsers() async {
    state = await AsyncValue.guard<List<User>>(() async {
      final allUsers = await _userRepository.fetchUsers();
      allUsers.shuffle();
      final top5Users = allUsers.take(5).toList();
      state = AsyncValue.data(top5Users);
      return top5Users;
    });

    return state.maybeWhen(
      data: (users) => users,
      orElse: () => [],
    );
  }

  @override
  FutureOr<List<User>> build() async {
    return _fetchUsers();
  }
}

final asyncUserProvider =
    AsyncNotifierProvider<AsyncUserNotifier, List<User>>(() {
  final UserRepository _userRepository = UserRepository();

  return AsyncUserNotifier(_userRepository);
});
