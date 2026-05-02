import 'package:flutter/material.dart';

class TentangSayaPage extends StatelessWidget {
  const TentangSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile picture
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF5C6BC0), width: 3),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/fotodiri.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // NPM
              _InfoCard(icon: Icons.badge, label: 'NPM', value: '20241320090'),
              const SizedBox(height: 12),

              // Nama
              _InfoCard(
                icon: Icons.person_outline,
                label: 'Nama Mahasiswa',
                value: 'Muhammad Ilyas Fauzi',
              ),
              const SizedBox(height: 12),

              // Program Studi
              _InfoCard(
                icon: Icons.school,
                label: 'Program Studi',
                value: 'Sistem Informasi',
              ),
              const SizedBox(height: 24),

              // Fakultas
              _InfoCard(
                icon: Icons.apartment,
                label: 'Fakultas',
                value: 'Fakultas Teknik Informatika dan Sistem Informasi',
              ),
              const SizedBox(height: 24),

              // Universitas
              _InfoCard(
                icon: Icons.account_balance,
                label: 'Universitas',
                value: 'Universitas Kebangsaan Republik Indonesia',
              ),
              const SizedBox(height: 24),

              // Deskripsi
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: const Color(0xFF5C6BC0).withOpacity(0.3),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sekilas tentang saya...',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3949AB),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Perkenalkan, nama saya Muhammad Ilyas Fauzi. Saya lahir pada tanggal 23 Desember 2004 di Cianjur, Jawa Barat. Saat ini, saya sedang menempuh pendidikan di Universitas Kebangsaan Republik Indonesia, '
                      'Saya adalah mahasiswa program studi Sistem Informasi kelas A2 yang sedang belajar pengembangan aplikasi mobile menggunakan Flutter. '
                      'Saya tertarik dengan teknologi dan pengembangan perangkat lunak, terutama di bidang mobile development dan UI/UX design.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Skill chips
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Keahlian:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: ['Flutter', 'Laravel', 'Android', 'UI/UX', 'MySQL']
                    .map(
                      (skill) => Chip(
                        label: Text(
                          skill,
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: const Color(0xFF5C6BC0),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF5C6BC0), size: 22),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
