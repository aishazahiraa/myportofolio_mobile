import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/experience.dart';
import '../services/api_client.dart';

class ExperienceListPage extends StatelessWidget {
  const ExperienceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),
      appBar: AppBar(
        title: const Text('Experience'),
        backgroundColor: const Color(0xFFF4A7BC),
      ),
      body: FutureBuilder<List<Experience>>(
        future: context.read<ApiClient>().fetchExperiences(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Gagal mengambil data experience'));
          }

          final experiences = snapshot.data ?? [];

          if (experiences.isEmpty) {
            return const Center(child: Text('Belum ada experience'));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: experiences.length,
            itemBuilder: (context, index) {
              final experience = experiences[index];

              return Card(
                child: ListTile(
                  title: Text(experience.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(experience.description),
                      Text('Kategori: ${experience.category}'),
                      Text('Stars: ${experience.starCount}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
