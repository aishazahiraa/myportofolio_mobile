import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/api_client.dart';

class ProjectFormPage extends StatefulWidget {
  const ProjectFormPage({super.key});

  @override
  State<ProjectFormPage> createState() => _ProjectFormPageState();
}

class _ProjectFormPageState extends State<ProjectFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _title = '';
  String _description = '';
  String _category = 'internship';
  String _thumbnail = '';
  bool _isLoading = false;

  final _categories = [
    'internship',
    'research',
    'volunteer',
    'part-time',
    'full-time',
    'freelance',
  ];

  Future<void> saveExperience() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final success = await context.read<ApiClient>().createExperience({
        'title': _title,
        'description': _description,
        'category': _category,
        'thumbnail': _thumbnail,
        'started_at': DateTime.now().toIso8601String().split('T').first,
        'ended_at': null,
      });

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success
                ? 'Experience berhasil ditambahkan!'
                : 'Experience gagal ditambahkan',
          ),
        ),
      );

      if (success) {
        Navigator.pop(context);
      }
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Gagal terhubung ke server')),
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),
      appBar: AppBar(
        title: const Text('Tambah Experience'),
        backgroundColor: const Color(0xFFF4A7BC),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Judul Experience',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => _title = value,
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Judul tidak boleh kosong'
                  : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Deskripsi',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => _description = value,
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Deskripsi tidak boleh kosong'
                  : null,
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              initialValue: _category,
              decoration: const InputDecoration(
                labelText: 'Kategori',
                border: OutlineInputBorder(),
              ),
              items: _categories.map((category) {
                return DropdownMenuItem(value: category, child: Text(category));
              }).toList(),
              onChanged: (value) {
                setState(() => _category = value!);
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Thumbnail URL (opsional)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => _thumbnail = value,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF4A7BC),
              ),
              onPressed: _isLoading ? null : saveExperience,
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
