import 'package:flutter/material.dart';

class notificationsetting extends StatefulWidget {
  const notificationsetting({Key? key}) : super(key: key);

  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<notificationsetting> {
  bool emailNotifications = true;
  bool pushNotifications = false;
  bool smsNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Settings'),
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
          _buildSwitchOption(
            'Email Notifications',
            'Receive notifications via email.',
            emailNotifications,
            (value) {
              setState(() {
                emailNotifications = value;
              });
            },
          ),
          _buildSwitchOption(
            'Push Notifications',
            'Receive notifications on your device.',
            pushNotifications,
            (value) {
              setState(() {
                pushNotifications = value;
              });
            },
          ),
          _buildSwitchOption(
            'SMS Notifications',
            'Receive notifications via SMS.',
            smsNotifications,
            (value) {
              setState(() {
                smsNotifications = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchOption(
      String title, String subtitle, bool currentValue, ValueChanged<bool> onChanged) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(
        value: currentValue,
        onChanged: onChanged,
        activeColor: Colors.blueAccent,
      ),
    );
  }
}
