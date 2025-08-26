import 'package:flutter/material.dart';

class AppSettingsScreen extends StatefulWidget {
  const AppSettingsScreen({super.key});

  @override
  State<AppSettingsScreen> createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  bool _pushNotifications = true;
  bool _emailNotifications = true;
  bool _smsNotifications = false;
  bool _locationServices = true;
  bool _analytics = true;
  bool _autoPlayVideos = false;
  bool _highQualityImages = true;

  String _selectedLanguage = 'English';
  String _selectedTheme = 'Dark';
  String _selectedDataUsage = 'Standard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181A20),
        elevation: 0,
        toolbarHeight: 64,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'App settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'PlusJakartaSans',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: _onSave,
            child: const Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionTitle('Notifications'),
              _card(
                children: [
                  _switchTile(
                    title: 'Push notifications',
                    subtitle: 'Receive notifications on your device',
                    value: _pushNotifications,
                    onChanged: (v) => setState(() => _pushNotifications = v),
                  ),
                  _divider(),
                  _switchTile(
                    title: 'Email notifications',
                    subtitle: 'Receive notifications via email',
                    value: _emailNotifications,
                    onChanged: (v) => setState(() => _emailNotifications = v),
                  ),
                  _divider(),
                  _switchTile(
                    title: 'SMS notifications',
                    subtitle: 'Receive notifications via SMS',
                    value: _smsNotifications,
                    onChanged: (v) => setState(() => _smsNotifications = v),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('App preferences'),
              _card(
                children: [
                  _dropdownTile(
                    icon: Icons.language,
                    title: 'Language',
                    value: _selectedLanguage,
                    items: const {
                      'English': 'English',
                      'Spanish': 'Español',
                      'French': 'Français',
                      'German': 'Deutsch',
                      'Arabic': 'العربية',
                    },
                    onChanged: (v) {
                      if (v != null) setState(() => _selectedLanguage = v);
                    },
                  ),
                  _divider(),
                  _dropdownTile(
                    icon: Icons.palette,
                    title: 'Theme',
                    value: _selectedTheme,
                    items: const {
                      'Light': 'Light',
                      'Dark': 'Dark',
                      'Auto': 'Auto (System)',
                    },
                    onChanged: (v) {
                      if (v != null) setState(() => _selectedTheme = v);
                    },
                  ),
                  _divider(),
                  _dropdownTile(
                    icon: Icons.data_usage,
                    title: 'Data usage',
                    value: _selectedDataUsage,
                    items: const {
                      'Low': 'Low (Save data)',
                      'Standard': 'Standard',
                      'High': 'High (Best quality)',
                    },
                    onChanged: (v) {
                      if (v != null) setState(() => _selectedDataUsage = v);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Privacy & Permissions'),
              _card(
                children: [
                  _switchTile(
                    title: 'Location services',
                    subtitle: 'Allow app to access your location',
                    value: _locationServices,
                    onChanged: (v) => setState(() => _locationServices = v),
                  ),
                  _divider(),
                  _switchTile(
                    title: 'Analytics & crash reports',
                    subtitle: 'Help improve the app',
                    value: _analytics,
                    onChanged: (v) => setState(() => _analytics = v),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Media & Content'),
              _card(
                children: [
                  _switchTile(
                    title: 'Auto-play videos',
                    subtitle: 'Automatically play videos in feed',
                    value: _autoPlayVideos,
                    onChanged: (v) => setState(() => _autoPlayVideos = v),
                  ),
                  _divider(),
                  _switchTile(
                    title: 'High quality images',
                    subtitle: 'Load high resolution images',
                    value: _highQualityImages,
                    onChanged: (v) => setState(() => _highQualityImages = v),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Storage & Cache'),
              _card(
                children: [
                  ListTile(
                    leading: const Icon(Icons.cleaning_services,
                        color: Color(0xFF43716C)),
                    title: const Text('Clear cache',
                        style: TextStyle(color: Colors.white)),
                    subtitle: const Text('Free up storage space',
                        style: TextStyle(color: Colors.white70)),
                    trailing:
                        const Icon(Icons.chevron_right, color: Colors.white54),
                    onTap: _showClearCacheDialog,
                  ),
                  _divider(),
                  ListTile(
                    leading:
                        const Icon(Icons.storage, color: Color(0xFF43716C)),
                    title: const Text('Storage info',
                        style: TextStyle(color: Colors.white)),
                    subtitle: const Text('View app storage usage',
                        style: TextStyle(color: Colors.white70)),
                    trailing:
                        const Icon(Icons.chevron_right, color: Colors.white54),
                    onTap: _showStorageInfo,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _onSave() {
    // TODO: Save app settings to backend or local storage
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('App settings saved')),
    );
    Navigator.pop(context);
  }

  void _showClearCacheDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF23242A),
          title:
              const Text('Clear Cache', style: TextStyle(color: Colors.white)),
          content: const Text(
            'This will clear all cached data including images and temporary files. The app will need to re-download some content.',
            style: TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement cache clearing
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Cache cleared')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF43716C),
                foregroundColor: Colors.white,
              ),
              child: const Text('Clear'),
            ),
          ],
        );
      },
    );
  }

  void _showStorageInfo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF23242A),
          title: const Text('Storage Information',
              style: TextStyle(color: Colors.white)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('App size: 45.2 MB',
                  style: TextStyle(color: Colors.white70)),
              SizedBox(height: 8),
              Text('Cache: 12.8 MB', style: TextStyle(color: Colors.white70)),
              SizedBox(height: 8),
              Text('User data: 8.3 MB',
                  style: TextStyle(color: Colors.white70)),
              SizedBox(height: 8),
              Text('Total: 66.3 MB', style: TextStyle(color: Colors.white)),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontFamily: 'PlusJakartaSans',
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _card({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF23242A),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(children: children),
    );
  }

  Widget _divider() {
    return const Divider(height: 1, color: Colors.white12);
  }

  Widget _switchTile({
    required String title,
    String? subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle: subtitle == null
          ? null
          : Text(subtitle, style: const TextStyle(color: Colors.white70)),
      value: value,
      onChanged: onChanged,
      activeColor: Colors.white,
      activeTrackColor: const Color(0xFF43716C),
    );
  }

  Widget _dropdownTile<T>({
    required IconData icon,
    required String title,
    required T value,
    required Map<T, String> items,
    required ValueChanged<T?> onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF43716C)),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          dropdownColor: const Color(0xFF23242A),
          value: value,
          items: items.entries
              .map((e) => DropdownMenuItem<T>(
                    value: e.key,
                    child: Text(e.value,
                        style: const TextStyle(color: Colors.white)),
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
