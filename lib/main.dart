import 'package:flutter/material.dart';

void main() {
  runApp(LaundryApp());
}

class LaundryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LaundryScreen(),
    );
  }
}

class LaundryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laundry App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Laundry',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            LaundryItem(
              title: 'Pakaian',
              subtitle: 'Cuci dan setrika',
              icon: Icons.local_laundry_service,
            ),
            LaundryItem(
              title: 'Selimut',
              subtitle: 'Cuci',
              icon: Icons.local_laundry_service,
            ),
            LaundryItem(
              title: 'Karpet',
              subtitle: 'Cuci dan jemur',
              icon: Icons.local_laundry_service,
            ),
            // Tambahkan item laundry lainnya di sini
          ],
        ),
      ),
    );
  }
}

class LaundryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const LaundryItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
