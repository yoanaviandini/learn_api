import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/service/user_service.dart';

class HomePageStatelessFutureBuilder extends StatelessWidget {
  const HomePageStatelessFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Api Future Builder'),
      ),
      body: FutureBuilder(
        future: UserService.fetchUsers(),
        builder: (context, snapshot) {
          final users = snapshot.data;
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error'),
            );
          }

          return ListView.builder(
            itemCount: users!.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text(user.email),
                ),
              );
            },
          );
        },
      ),
    );
  }
}