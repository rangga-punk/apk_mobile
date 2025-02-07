/// File: settings.dart
/// Description: Settings page with elegant and modern design.

import 'package:clothes/languagesetting.dart';
import 'package:clothes/notificationsetting.dart';
import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSettingsOption(
            context,
            icon: Icons.person,
            title: 'Account',
            subtitle: 'Manage your account settings',
            onTap: () {
              // Navigate to Account settings
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Customize notification preferences',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const notificationsetting(),
                )
                );
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.lock,
            title: 'Privacy',
            subtitle: 'Privacy and security settings',
            onTap: () {
              // Navigate to Privacy settings
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.language,
            title: 'Language',
            subtitle: 'Select your preferred language',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const languagesetting(),
                )
                );
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.help_outline,
            title: 'Help & Support',
            subtitle: 'Get help and find FAQs',
            onTap: () {
              // Navigate to Help & Support
            },
          ),
          const Divider(),
          _buildSettingsOption(
            context,
            icon: Icons.info_outline,
            title: 'About',
            subtitle: 'Learn more about this app',
            onTap: () {
              // Navigate to About section
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.logout,
            title: 'Log Out',
            subtitle: 'Sign out of your account',
            onTap: () {
              // Handle log out
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsOption(BuildContext context,
      {required IconData icon,
      required String title,
      required String subtitle,
      required VoidCallback onTap}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.blueAccent.withOpacity(0.2),
        child: Icon(
          icon,
          color: Colors.blueAccent,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 18,
      ),
      onTap: onTap,
    );
  }
}
