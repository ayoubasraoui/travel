// import 'package:flutter/material.dart';
// import 'package:flutter2/screens/loginScreen.dart';
// import 'package:flutter2/screens/swipeScreen.dart';

// class Profile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61), // Background color
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 20), // Space from the top
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.arrow_back, color: Colors.white),
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context)=>SwiperScreen())
//                       );
//                   },
//                 ),
//                 Expanded(
//                   child: Center(
//                     child: Text(
//                       'Profile',
//                       style: TextStyle(
//                         fontFamily: 'PlusJakartaSans',
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 48), // Placeholder to balance the row
//               ],
//             ),
//             SizedBox(height: 20),
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage('assets/profile1.jpg'), // Replace with your profile image path
//               child: Align(
//                 alignment: Alignment.bottomRight,
//                 child: CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Colors.white,
//                   child: Icon(Icons.edit, color: Colors.black, size: 20),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Jane Doe, 22',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 90),
//             Card(
//               color: Colors.white,
//               margin: EdgeInsets.symmetric(vertical: 1),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                 ),
//               ),
//               child: ListTile(
//                 leading: Icon(Icons.person, color: Colors.black),
//                 title: Text('Profile settings', style: TextStyle(fontFamily: 'PlusJakartaSans')),
//                 trailing: Icon(Icons.arrow_forward_ios),
//                 onTap: () {
//                   // Handle Profile settings tap
//                 },
//               ),
//             ),
//             Card(
//               color: Colors.white,
//               margin: EdgeInsets.symmetric(vertical: 1),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(0),
//               ),
//               child: ListTile(
//                 leading: Icon(Icons.settings, color: Colors.black),
//                 title: Text('App settings', style: TextStyle(fontFamily: 'PlusJakartaSans')),
//                 trailing: Icon(Icons.arrow_forward_ios),
//                 onTap: () {
//                   // Handle App settings tap
//                 },
//               ),
//             ),
//             Card(
//               color: Colors.white,
//               margin: EdgeInsets.symmetric(vertical: 1),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(0),
//               ),
//               child: ListTile(
//                 leading: Icon(Icons.subscriptions, color: Colors.black),
//                 title: Text('Subscription', style: TextStyle(fontFamily: 'PlusJakartaSans')),
//                 trailing: Icon(Icons.arrow_forward_ios),
//                 onTap: () {
//                   // Handle Subscription tap
//                 },
//               ),
//             ),
//             Card(
//               color: Colors.white,
//               margin: EdgeInsets.symmetric(vertical: 1),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                 ),
//               ),
//               child: ListTile(
//                 leading: Icon(Icons.description, color: Colors.black),
//                 title: Text('Terms and conditions', style: TextStyle(fontFamily: 'PlusJakartaSans')),
//                 trailing: Icon(Icons.arrow_forward_ios),
//                 onTap: () {
//                   // Handle Terms and conditions tap
//                 },
//               ),
//             ),
//             SizedBox(height: 75),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context)=>LoginScreen())
//                   );
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.red,
//                 backgroundColor: Colors.white,
//                 minimumSize: Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10),
//                   ),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.logout, color: Colors.red), // Add the logout icon
//                   SizedBox(width: 8), // Space between icon and text
//                   Text(
//                     'Log out',
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 3),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle delete account
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.red,
//                 backgroundColor: Colors.white,
//                 minimumSize: Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(10),
//                     bottomRight: Radius.circular(10),
//                   ),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.delete, color: Colors.red), // Add the delete icon
//                   SizedBox(width: 8), // Space between icon and text
//                   Text(
//                     'Delete account',
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:flutter2/Profile/ProfileSettings.dart';
import 'package:flutter2/services/profile attributes/accountSettings.dart';
import 'package:flutter2/services/profile attributes/appSettings.dart';
import 'package:flutter2/screens/loginScreen.dart';
import 'package:flutter2/services/profile%20attributes/Privacy.dart';
import 'package:flutter2/services/profile%20attributes/helpAndsupport.dart';
// import 'package:flutter2/screens/swipeScreen.dart';
// import 'package:flutter2/services/likes.dart';
import 'package:flutter2/services/profile%20attributes/subscriptionSettings.dart';
import 'package:flutter2/services/profile%20attributes/termsAndconditions.dart';
import 'package:flutter2/services/profile.dart';

class ProfileAtt extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileAtt> {
  // Simple local preferences for sheets
  bool _notifPush = true;
  bool _notifEmail = true;
  bool _notifSms = false;
  String _language = 'English';
  String _theme = 'Dark';

  // Removed unused _currentIndex and navigation helpers

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: Text('Logout', style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Account'),
          content: Text(
            'Are you sure you want to delete your account? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: Text('Delete', style: TextStyle(color: Colors.red)),
              onPressed: () {
                // Implement account deletion logic
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App Bar
                Row(
                  children: [
                    IconButton(
                      icon:
                          Icon(Icons.arrow_back, color: Colors.white, size: 28),
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontFamily: 'PlusJakartaSans',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                // Account Section
                Text('Account',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                        letterSpacing: 1)),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF23242A),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      // _buildSettingsTile(
                      //   icon: Icons.person,
                      //   title: 'Profile settings',
                      //   onTap: () {},
                      // ),
                      // Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.lock_outline,
                        title: 'Account settings',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AccountSettingsScreen(),
                            ),
                          );
                        },
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.settings,
                        title: 'App settings',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppSettingsScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                // App Section
                Text('App',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                        letterSpacing: 1)),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF23242A),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      _buildSettingsTile(
                        icon: Icons.subscriptions,
                        title: 'Subscription',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SubscriptionSettingsScreen(),
                            ),
                          );
                        },
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.notifications,
                        title: 'Notifications',
                        onTap: _showNotificationsSheet,
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.language,
                        title: 'Language',
                        onTap: _showLanguageSheet,
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.palette,
                        title: 'Theme',
                        onTap: _showThemeSheet,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                // Legal Section
                Text('Legal',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                        letterSpacing: 1)),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF23242A),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      _buildSettingsTile(
                        icon: Icons.description,
                        title: 'Terms and conditions',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TermsAndConditionsScreen(),
                            ),
                          );
                        },
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.privacy_tip,
                        title: 'Privacy policy',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PrivacyPolicyScreen(),
                            ),
                          );
                        },
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.help_outline,
                        title: 'Help & Support',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const HelpAndSupportScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                // Danger Zone
                Text('Danger Zone',
                    style: TextStyle(
                        color: Colors.red[200],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                        letterSpacing: 1)),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF23242A),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      _buildActionButton(
                        context: context,
                        icon: Icons.logout,
                        title: 'Log out',
                        onTap: () => _showLogoutDialog(context),
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildActionButton(
                        context: context,
                        icon: Icons.delete_forever,
                        title: 'Delete account',
                        onTap: () => _showDeleteAccountDialog(context),
                        isDangerous: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox.shrink(),
    );
  }

  void _showNotificationsSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF23242A),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: false,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: StatefulBuilder(
            builder: (context, setModalState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Notifications',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Push notifications',
                        style: TextStyle(color: Colors.white)),
                    value: _notifPush,
                    onChanged: (v) => setModalState(() => _notifPush = v),
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF43716C),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Email notifications',
                        style: TextStyle(color: Colors.white)),
                    value: _notifEmail,
                    onChanged: (v) => setModalState(() => _notifEmail = v),
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF43716C),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('SMS notifications',
                        style: TextStyle(color: Colors.white)),
                    value: _notifSms,
                    onChanged: (v) => setModalState(() => _notifSms = v),
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF43716C),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {});
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Notification settings updated')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF43716C),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Save'),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }

  void _showLanguageSheet() {
    final List<String> options = [
      'English',
      'Spanish',
      'French',
      'German',
      'Arabic'
    ];
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF23242A),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        String temp = _language;
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: StatefulBuilder(
            builder: (context, setModalState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Language',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ...options.map((lang) => RadioListTile<String>(
                        contentPadding: EdgeInsets.zero,
                        value: lang,
                        groupValue: temp,
                        onChanged: (v) => setModalState(() => temp = v!),
                        title: Text(lang,
                            style: const TextStyle(color: Colors.white)),
                        activeColor: const Color(0xFF43716C),
                      )),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          setState(() => _language = temp);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Language set to $_language')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF43716C),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Apply'),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }

  void _showThemeSheet() {
    final List<String> options = ['Light', 'Dark', 'Auto'];
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF23242A),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        String temp = _theme;
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: StatefulBuilder(
            builder: (context, setModalState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Theme',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ...options.map((theme) => RadioListTile<String>(
                        contentPadding: EdgeInsets.zero,
                        value: theme,
                        groupValue: temp,
                        onChanged: (v) => setModalState(() => temp = v!),
                        title: Text(theme,
                            style: const TextStyle(color: Colors.white)),
                        activeColor: const Color(0xFF43716C),
                      )),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          setState(() => _theme = temp);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Theme set to $_theme')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF43716C),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Apply'),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF43716C)),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'PlusJakartaSans',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.white54),
      onTap: onTap,
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isDangerous = false,
  }) {
    final color = isDangerous ? Colors.red : Color(0xFF43716C);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            children: [
              Icon(icon, color: color),
              SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
