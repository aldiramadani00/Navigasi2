import 'package:flutter/material.dart';
import 'package:flutter_application_aldi_navigasi2/home.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 0) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            } else if (value == 1) {
              //pergi ke account
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'Account'),
          ]),
      appBar: AppBar(
        title: const Text('Hello Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
