import 'package:flutter/material.dart';
import 'package:flutter2/services/profile.dart';

class ProfileSettingsScreen extends StatefulWidget {
  @override
  _ProfileSettingsScreenState createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  final TextEditingController _nameController =
      TextEditingController(text: 'Jane Doe');
  final TextEditingController _bioController = TextEditingController(
    text: 'Adventure seeker | Coffee lover | Tech enthusiast',
  );
  String _selectedGender = 'Female';
  List<String> _selectedInterests = ['Travel', 'Photography', 'Food'];
  DateTime _selectedDate = DateTime(2000, 1, 1);
  String _location = 'New York, USA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SafeArea(
        child: Container(
          color: Color(0xFF181A20),
          child: Column(
            children: [
              // App Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'PlusJakartaSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: _saveChanges,
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Profile Content
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile Picture
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                ),
                                child: CircleAvatar(
                                  radius: 58,
                                  backgroundImage:
                                      AssetImage('assets/profile1.jpg'),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.camera_alt, size: 24),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),

                        // Basic Information
                        _buildSectionTitle('Basic Information'),
                        _buildTextField('Name', _nameController),
                        _buildDatePicker('Birthday'),
                        _buildDropdown('Gender', ['Female', 'Male', 'Other'],
                            _selectedGender),
                        _buildTextField(
                            'Location', TextEditingController(text: _location)),
                        _buildTextField('Bio', _bioController, maxLines: 3),

                        SizedBox(height: 24),

                        // Interests
                        _buildSectionTitle('Interests'),
                        _buildInterestsTags(),

                        SizedBox(height: 24),

                        // Travel Preferences
                        _buildSectionTitle('Travel Preferences'),
                        _buildPreferenceSection(),

                        SizedBox(height: 24),

                        // Privacy Settings
                        _buildSectionTitle('Privacy Settings'),
                        _buildPrivacySettings(),

                        SizedBox(height: 24),

                        // Notifications
                        _buildSectionTitle('Notifications'),
                        _buildNotificationSettings(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'PlusJakartaSans',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {int maxLines = 1}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xFF23242A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.white70),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildDatePicker(String label) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xFF23242A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          label,
          style: TextStyle(color: Colors.white70),
        ),
        subtitle: Text(
          '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.calendar_today, color: Colors.white),
        onTap: () async {
          final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: _selectedDate,
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (picked != null) {
            setState(() {
              _selectedDate = picked;
            });
          }
        },
      ),
    );
  }

  Widget _buildDropdown(String label, List<String> items, String value) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFF23242A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          dropdownColor: Color(0xFF23242A),
          style: TextStyle(color: Colors.white),
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                _selectedGender = newValue;
              });
            }
          },
        ),
      ),
    );
  }

  Widget _buildInterestsTags() {
    List<String> allInterests = [
      'Travel',
      'Photography',
      'Food',
      'Art',
      'Music',
      'Sports',
      'Reading',
      'Movies',
      'Technology',
      'Fashion'
    ];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: allInterests.map((interest) {
        final isSelected = _selectedInterests.contains(interest);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                _selectedInterests.remove(interest);
              } else {
                _selectedInterests.add(interest);
              }
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : Color(0xFF23242A),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              interest,
              style: TextStyle(
                color: isSelected ? Color(0xFF084C61) : Colors.white,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildPreferenceSection() {
    return Column(
      children: [
        _buildPreferenceItem('Preferred Destinations'),
        _buildPreferenceItem('Travel Style'),
        _buildPreferenceItem('Budget Range'),
        _buildPreferenceItem('Trip Duration'),
      ],
    );
  }

  Widget _buildPrivacySettings() {
    return Column(
      children: [
        _buildSwitchTile('Profile Visibility', false),
        _buildSwitchTile('Show Location', true),
        _buildSwitchTile('Allow Messages', true),
      ],
    );
  }

  Widget _buildNotificationSettings() {
    return Column(
      children: [
        _buildSwitchTile('New Matches', true),
        _buildSwitchTile('Messages', true),
        _buildSwitchTile('Travel Updates', true),
      ],
    );
  }

  Widget _buildPreferenceItem(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Color(0xFF23242A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
        onTap: () {
          // Navigate to detailed preference screen
        },
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Color(0xFF23242A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SwitchListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        value: value,
        onChanged: (bool newValue) {
          setState(() {
            // Update the setting
          });
        },
        activeColor: Colors.white,
        activeTrackColor: Colors.blue,
      ),
    );
  }

  void _saveChanges() {
    // Implement save functionality
    Navigator.pop(context);
  }
}
