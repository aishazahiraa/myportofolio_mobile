import 'package:flutter/material.dart';

import '../widgets/left_drawer.dart';
import '../widgets/project_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final String npm = "2506624726";
  final String nama = "Aisha Ibnaty Zahira";
  final String kelas = "PBP C";

  @override
  Widget build(BuildContext context) {
    final items = [
      ItemHomepage("Experience", Icons.work, const Color(0xFFF4A7BC)),
      ItemHomepage(
        "Tambah Experience",
        Icons.add_circle,
        const Color(0xFFF8DFA0),
      ),
      ItemHomepage("Add Education", Icons.school, const Color(0xFFD9C6ED)),
      ItemHomepage("Logout", Icons.logout, const Color(0xFFA9D6E5)),
    ];

    return Scaffold(
      drawer: const LeftDrawer(),
      appBar: AppBar(
        title: const Text('MyPortfolio', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFF4A7BC),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: nama),
                InfoCard(title: 'Class', content: kelas),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Welcome to MyPortfolio Mobile!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: items.map((item) => ItemCard(item)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(
                content,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
