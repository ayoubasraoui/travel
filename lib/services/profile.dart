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
import 'package:flutter2/screens/loginScreen.dart';
import 'package:flutter2/screens/swipeScreen.dart';
import 'package:flutter2/services/likes.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
      backgroundColor: Color(0xFF084C61),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // App Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 40), // Balance the row
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'PlusJakartaSans',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.white),
                      onPressed: () {
                        // Handle edit profile
                      },
                    ),
                  ],
                ),
                
                SizedBox(height: 20),
                
                // Profile Image Section
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/profile1.jpg'),
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Icon(Icons.camera_alt, size: 20),
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: 16),
                
                // Profile Info
                Text(
                  '$userName, $age',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  bio,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                
                SizedBox(height: 32),
                
                // Settings Cards
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      _buildSettingsTile(
                        icon: Icons.person,
                        title: 'Profile settings',
                        onTap: () {},
                      ),
                      Divider(height: 1),
                      _buildSettingsTile(
                        icon: Icons.settings,
                        title: 'App settings',
                        onTap: () {},
                      ),
                      Divider(height: 1),
                      _buildSettingsTile(
                        icon: Icons.subscriptions,
                        title: 'Subscription',
                        onTap: () {},
                      ),
                      Divider(height: 1),
                      _buildSettingsTile(
                        icon: Icons.description,
                        title: 'Terms and conditions',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 32),
                
                // Action Buttons
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      _buildActionButton(
                        context: context,
                        icon: Icons.logout,
                        title: 'Log out',
                        onTap: () => _showLogoutDialog(context),
                      ),
                      Divider(height: 1),
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavButton('assets/icons/profile.png', () => 
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()))),
              _buildNavButton('assets/icons/location pin.png', () {}),
              _buildNavButton('assets/icons/plane.png', () => 
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SwiperScreen()))),
              _buildNavButton('assets/icons/Chat.png', () {}),
              _buildNavButton('assets/icons/Love.png', () => 
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LikeScreen()))),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF084C61)),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'PlusJakartaSans',
          fontSize: 16,
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.grey),
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
    final color = isDangerous ? Colors.red : Color(0xFF084C61);
    
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
                  color: color,
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