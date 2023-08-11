import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mc_poc/src/providers/user_provider.dart';
import 'user_detail_view.dart';

class UserListView extends ConsumerWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsyncValue = ref.watch(asyncUserProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("User List")),
      body: usersAsyncValue.when(
        data: (users) => ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text('${user.email}, ${user.company.name}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetailView(user: user),
                  ),
                );
              },
            );
          },
        ),
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text("Error: $error"),
      ),
    );
  }
}
