import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool isProfileVisible = true;
  bool showEmail = false;
  bool showPhoneNumber = false;
  bool onlyUsersWithBio = false;
  bool showOnlineStatus = true;

  _WhoCanSeeOption whoCanSeeYou = _WhoCanSeeOption.everyone;
  _WhoCanMessageOption whoCanMessageYou = _WhoCanMessageOption.everyone;

  String _currentEmail = 'jane.doe@example.com';
  String _currentPhone = '+1 555 0100';

  final TextEditingController _emailController =
      TextEditingController(text: 'jane.doe@example.com');
  final TextEditingController _phoneController =
      TextEditingController(text: '+1 555 0100');
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _obscureCurrent = true;
  bool _obscureNew = true;
  bool _obscureConfirm = true;

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
          'Account settings',
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
              _sectionTitle('Account details'),
              _card(
                children: [
                  _displayTile(
                    icon: Icons.email_outlined,
                    title: 'Email',
                    value: _currentEmail,
                    onEdit: () => _showEditFieldSheet(
                      label: 'Email',
                      initialValue: _currentEmail,
                      keyboardType: TextInputType.emailAddress,
                      validator: (v) {
                        final emailRegex =
                            RegExp(r'^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$');
                        if (v.trim().isEmpty ||
                            !emailRegex.hasMatch(v.trim())) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                      onSaved: (v) => setState(() => _currentEmail = v.trim()),
                    ),
                  ),
                  _divider(),
                  _displayTile(
                    icon: Icons.phone_outlined,
                    title: 'Phone number',
                    value: _currentPhone,
                    onEdit: () => _showEditFieldSheet(
                      label: 'Phone number',
                      initialValue: _currentPhone,
                      keyboardType: TextInputType.phone,
                      validator: (v) {
                        if (v.trim().isEmpty) return 'Enter a phone number';
                        return null;
                      },
                      onSaved: (v) => setState(() => _currentPhone = v.trim()),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Security'),
              _card(
                children: [
                  ListTile(
                    leading: const Icon(Icons.lock_outline,
                        color: Color(0xFF43716C)),
                    title: const Text('Change password',
                        style: TextStyle(color: Colors.white)),
                    trailing:
                        const Icon(Icons.chevron_right, color: Colors.white54),
                    onTap: _showChangePasswordSheet,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Privacy'),
              _card(
                children: [
                  _switchTile(
                    title: 'Profile visibility',
                    subtitle: 'Hide your profile from others',
                    value: isProfileVisible,
                    onChanged: (v) => setState(() => isProfileVisible = v),
                  ),
                  _divider(),
                  _switchTile(
                    title: 'Show online status',
                    subtitle: 'Display when you are active',
                    value: showOnlineStatus,
                    onChanged: (v) => setState(() => showOnlineStatus = v),
                  ),
                  _divider(),
                  _dropdownTile<_WhoCanSeeOption>(
                    icon: Icons.visibility,
                    title: 'Who can see you',
                    value: whoCanSeeYou,
                    items: const {
                      _WhoCanSeeOption.everyone: 'Everyone',
                      _WhoCanSeeOption.peopleILike: 'Only people I like',
                      _WhoCanSeeOption.nobody: 'Nobody',
                    },
                    onChanged: (v) {
                      if (v != null) setState(() => whoCanSeeYou = v);
                    },
                  ),
                  _divider(),
                  _dropdownTile<_WhoCanMessageOption>(
                    icon: Icons.message,
                    title: 'Who can message you',
                    value: whoCanMessageYou,
                    items: const {
                      _WhoCanMessageOption.everyone: 'Everyone',
                      _WhoCanMessageOption.matchesOnly: 'Matches only',
                    },
                    onChanged: (v) {
                      if (v != null) setState(() => whoCanMessageYou = v);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Contact visibility'),
              _card(
                children: [
                  _switchTile(
                    title: 'Show email',
                    subtitle: 'Allow others to see your email',
                    value: showEmail,
                    onChanged: (v) => setState(() => showEmail = v),
                  ),
                  _divider(),
                  _switchTile(
                    title: 'Show phone number',
                    subtitle: 'Allow others to see your phone',
                    value: showPhoneNumber,
                    onChanged: (v) => setState(() => showPhoneNumber = v),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Discovery filters'),
              _card(
                children: [
                  _switchTile(
                    title: 'Only show users with bio',
                    subtitle: 'Filter out users without a bio',
                    value: onlyUsersWithBio,
                    onChanged: (v) => setState(() => onlyUsersWithBio = v),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSave() {
    String? error;
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (_currentEmail.isEmpty || !emailRegex.hasMatch(_currentEmail)) {
      error = 'Please enter a valid email.';
    } else if (_currentPhone.isEmpty) {
      error = 'Please enter a phone number.';
    }
    if (error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error)),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Settings saved')),
    );
    Navigator.pop(context);
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

  Widget _displayTile({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onEdit,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF43716C)),
      title: Text(title, style: const TextStyle(color: Colors.white70)),
      subtitle: Text(value, style: const TextStyle(color: Colors.white)),
      trailing: TextButton(
        onPressed: onEdit,
        child: const Text('Edit'),
      ),
    );
  }

  void _showEditFieldSheet({
    required String label,
    required String initialValue,
    required TextInputType keyboardType,
    required String? Function(String) validator,
    required ValueChanged<String> onSaved,
  }) {
    final controller = (label.toLowerCase().contains('phone'))
        ? _phoneController
        : _emailController;
    controller.text = initialValue;

    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF23242A),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(color: Colors.white70)),
              const SizedBox(height: 8),
              TextField(
                controller: controller,
                keyboardType: keyboardType,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: '',
                  hintStyle: TextStyle(color: Colors.white38),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white24),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF43716C)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      final error = validator(controller.text);
                      if (error != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(error)),
                        );
                        return;
                      }
                      onSaved(controller.text);
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF43716C),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Save'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showChangePasswordSheet() {
    _currentPasswordController.clear();
    _newPasswordController.clear();
    _confirmPasswordController.clear();

    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF23242A),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: StatefulBuilder(
            builder: (context, setModalState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Change password',
                      style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 8),
                  _sheetPasswordField(
                    label: 'Current password',
                    controller: _currentPasswordController,
                    obscure: _obscureCurrent,
                    onToggle: () =>
                        setModalState(() => _obscureCurrent = !_obscureCurrent),
                  ),
                  const SizedBox(height: 12),
                  _sheetPasswordField(
                    label: 'New password',
                    controller: _newPasswordController,
                    obscure: _obscureNew,
                    onToggle: () =>
                        setModalState(() => _obscureNew = !_obscureNew),
                  ),
                  const SizedBox(height: 12),
                  _sheetPasswordField(
                    label: 'Confirm new password',
                    controller: _confirmPasswordController,
                    obscure: _obscureConfirm,
                    onToggle: () =>
                        setModalState(() => _obscureConfirm = !_obscureConfirm),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          final curr = _currentPasswordController.text;
                          final next = _newPasswordController.text;
                          final confirm = _confirmPasswordController.text;
                          String? error;
                          if (curr.isEmpty) {
                            error = 'Enter your current password.';
                          } else if (next.length < 6) {
                            error =
                                'New password must be at least 6 characters.';
                          } else if (next != confirm) {
                            error =
                                'New password and confirmation do not match.';
                          }
                          if (error != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(error)),
                            );
                            return;
                          }
                          // TODO: call backend to change password
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Password updated')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF43716C),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _sheetPasswordField({
    required String label,
    required TextEditingController controller,
    required bool obscure,
    required VoidCallback onToggle,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF43716C)),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            obscure ? Icons.visibility_off : Icons.visibility,
            color: Colors.white70,
          ),
          onPressed: onToggle,
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

  Widget _inputTile({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    VoidCallback? onToggleObscure,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white70),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white24),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF43716C)),
          ),
          suffixIcon: onToggleObscure == null
              ? null
              : IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white70,
                  ),
                  onPressed: onToggleObscure,
                ),
        ),
      ),
    );
  }
}

enum _WhoCanSeeOption { everyone, peopleILike, nobody }

enum _WhoCanMessageOption { everyone, matchesOnly }
