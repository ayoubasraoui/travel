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
import 'package:flutter2/Profile/ProfileSettings.dart';
import 'package:flutter2/screens/loginScreen.dart';
import 'package:flutter2/screens/swipeScreen.dart';
import 'package:flutter2/services/likes.dart';
import 'package:flutter2/services/posts.dart';
import 'package:flutter2/services/profile.dart';

class ProfileAtt extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileAtt> {
  int _currentIndex = 2; // Profile tab index (assuming it's the last tab)

  final String userName = "Jane Doe";
  final int age = 22;
  final String location = "New York, USA";
  final String bio = "Adventure seeker | Coffee lover | Tech enthusiast";

  void _onTabTapped(int index) {
    if (index != _currentIndex) {
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SwiperScreen()),
          );
          break;
        case 1:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LikeScreen()),
          );
          break;
        case 2:
          // Already on profile screen
          break;
      }
    }
  }

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

  Widget _buildNavButton(String icon, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      child: IconButton(
        icon: ImageIcon(
          AssetImage(icon),
          color: Colors.white,
          size: 26,
        ),
        onPressed: onPressed,
      ),
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
                      _buildSettingsTile(
                        icon: Icons.person,
                        title: 'Profile settings',
                        onTap: () {},
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.settings,
                        title: 'App settings',
                        onTap: () {},
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
                        onTap: () {},
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.notifications,
                        title: 'Notifications',
                        onTap: () {},
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.language,
                        title: 'Language',
                        onTap: () {},
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.palette,
                        title: 'Theme',
                        onTap: () {},
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
                        onTap: () {},
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.privacy_tip,
                        title: 'Privacy policy',
                        onTap: () {},
                      ),
                      Divider(height: 1, color: Colors.white12),
                      _buildSettingsTile(
                        icon: Icons.help_outline,
                        title: 'Help & Support',
                        onTap: () {},
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
