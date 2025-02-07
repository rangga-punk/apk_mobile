import 'package:flutter/material.dart';

class languagesetting extends StatefulWidget {
  const languagesetting({Key? key}) : super(key: key);

  @override
  _LanguageSettingsState createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<languagesetting> {
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Settings'),
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
          _buildLanguageOption('English'),
          _buildLanguageOption('Spanish'),
          _buildLanguageOption('French'),
          _buildLanguageOption('German'),
          _buildLanguageOption('Chinese'),
        ],
      ),
    );
  }

  Widget _buildLanguageOption(String language) {
    return ListTile(
      title: Text(language),
      trailing: selectedLanguage == language
          ? const Icon(Icons.check, color: Colors.blueAccent)
          : null,
      onTap: () {
        setState(() {
          selectedLanguage = language;
        });
      },
    );
  }
}
