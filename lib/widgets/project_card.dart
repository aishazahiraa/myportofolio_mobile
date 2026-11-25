import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/menu.dart';
import '../screens/project_form.dart';
import '../screens/education_form.dart';
import '../screens/experience_list.dart';
import '../screens/login.dart';
import '../services/api_client.dart';

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () async {
          final api = context.read<ApiClient>();

          if (item.name == 'Experience') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExperienceListPage(),
              ),
            );
          } else if (item.name == 'Tambah Experience') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => api.token == null
                    ? const LoginPage()
                    : const ProjectFormPage(),
              ),
            );
          } else if (item.name == 'Add Education') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EducationForm()),
            );
          } else if (item.name == 'Logout') {
            try {
              if (api.token != null) {
                await api.logout();
              }

              if (!context.mounted) return;

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            } catch (e) {
              if (!context.mounted) return;

              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Logout gagal')));
            }
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.icon, color: Colors.white, size: 30),
            const SizedBox(height: 8),
            Text(
              item.name,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
