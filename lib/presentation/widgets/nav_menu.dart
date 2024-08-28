import 'package:flutter/material.dart';

class NevMenu extends StatelessWidget {
  const NevMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Text('Home'),
              tileColor: Colors.grey.shade300,
            ),
            ListTile(
              title: const Text('Products'),
              tileColor: Colors.pink.shade300,
            ),
            const ListTile(
              title: Text('Stock'),
            ),
            const ListTile(
              title: Text('Setting'),
            ),
            const ListTile(
              title: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
