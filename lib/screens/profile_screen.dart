import 'package:compilecamp/helpers/helpers.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 50,
                backgroundImage: const AssetImage(
                  'assets/images/profile_picture.jpeg',
                ),
              ),
              verticalSpace(15),

              // Name
              Text(
                'Samuel Nyarko',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(8),

              // Skills
              Text(
                'Flutter • Java • Firebase',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[700],
                ),
              ),
              verticalSpace(25),

              // Bio Section
              SectionTitle(title: 'Bio'),
              verticalSpace(8),
              Text(
                "I'm a mobile developer who sees code as a canvas — blending structure and soul to create apps that feel like the future. Currently focused on building fast, responsive, and intuitive experiences using Flutter.",
                style: theme.textTheme.bodyMedium?.copyWith(
                  height: 1.6,
                  color: Colors.grey[800],
                ),
                textAlign: TextAlign.center,
              ),
              verticalSpace(30),

              // Contact Info
              SectionTitle(title: 'Contact Information'),
              verticalSpace(10),

              ContactTile(icon: Icons.email, label: 'samuelnyark0@gmail.com'),
              ContactTile(icon: Icons.phone, label: '02000000015'),
              ContactTile(icon: Icons.code, label: 'GitHub: SamuelNyarkoLab'),
              ContactTile(icon: Icons.alternate_email, label: 'X: Kwab_ena18'),
            ],
          ),
        ),
      ),
    );
  }
}

// Section Title Widget
class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.left,
    );
  }
}

// Contact Tile Widget
class ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactTile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 1,
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
