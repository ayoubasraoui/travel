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
import 'package:flutter2/services/chat.dart';
import 'package:flutter2/services/likes.dart';
import 'package:flutter2/services/posts.dart';
import 'package:flutter2/services/profileAttribues.dart';

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
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _currentPlanPage = 0;

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
        child: Column(
          children: [
            // App Bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.white, size: 28),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  ProfileAtt(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // Profile Image
            SizedBox(height: 8),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 76,
                    backgroundImage: AssetImage('assets/profile1.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileSettingsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(Icons.edit,
                            color: Color(0xFF43716C), size: 22),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Name and Age
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(text: userName),
                    TextSpan(
                      text: ', $age',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            // Plans/Subscriptions Carousel
            SizedBox(
              height: 320,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPlanPage = page;
                    });
                  },
                  padEnds: false,
                  children: [
                    _buildPlanCard('Travel BLACK', 'assets/plan_black.png'),
                    _buildPlanCard('Travel PLUS', 'assets/plan_plus.png'),
                    _buildPlanCard('Travel BASIC', 'assets/plan_basic.png'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Page indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                        .withOpacity(_currentPlanPage == index ? 1 : 0.3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // _buildNavButton(
            //     'assets/icons/profile.png',
            //     () => Navigator.pushReplacement(context,
            //         MaterialPageRoute(builder: (context) => Profile()))),
            IconButton(
              icon: ImageIcon(
                AssetImage('assets/icons/profile.png'),
                color: Color(0xFF43716C),
                size: 26,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage('assets/icons/location pin.png'),
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        SocialFeedScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                  ),
                );
              },
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage('assets/icons/plane.png'),
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        SwiperScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                  ),
                );
              },
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage('assets/icons/Chat.png'),
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        MessagingScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                  ),
                );
              },
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage('assets/icons/Love.png'),
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LikeScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanCard(String title, String assetPath) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 8, top: 12, bottom: 12),
      width: 400,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
        gradient: title == 'Travel BLACK'
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF52524F),
                  Color(0xFF7A7A76),
                  Color(0xFFE0E0DC),
                  Color(0xFFFFFFFF),
                ],
                stops: [0.0, 0.35, 0.7, 1.0],
              )
            : null,
        color: title == 'Travel BLACK' ? null : Colors.white,
      ),
      child: Stack(
        children: [
          if (title == 'Travel BLACK')
            Positioned(
              top: 18,
              left: 4,
              child: Image.asset(
                'assets/black.png',
                width: 170,
                height: 45,
                fit: BoxFit.contain,
              ),
            ),
          if (title == 'Travel BLACK')
            Positioned(
              top: 18,
              right: 4,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                  elevation: 2,
                ),
                child: Text(
                  'Upgrade',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          if (title != 'Travel BLACK' && assetPath.endsWith('.png'))
            Positioned.fill(
              child: Image.asset(assetPath, fit: BoxFit.cover),
            ),
          // No text or overlay
        ],
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
