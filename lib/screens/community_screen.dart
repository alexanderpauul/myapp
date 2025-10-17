
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200?random=$index'),
            ),
            title: Text('User $index'),
            subtitle: const Text('Nationality: Country'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
