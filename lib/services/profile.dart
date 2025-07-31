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
import 'package:flutter2/Plans/Black.dart';
import 'package:flutter2/Plans/Vip.dart';
import 'package:flutter2/Plans/Plus.dart';
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
                  Hero(
                    tag: 'profile_image_main',
                    child: CircleAvatar(
                      radius: 76,
                      backgroundImage: AssetImage('assets/profile1.jpg'),
                    ),
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
              height: 280,
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
                    _buildPlanCard('Travel BLACK'),
                    _buildPlanCard('Travel VIP'),
                    _buildPlanCard('Travel PLUS'),
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
            SizedBox(height: 16),
            // Thin grey line separator
            Container(
              height: 1,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.grey.withOpacity(0.3),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Feature boxes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: _buildFeatureBox(
                      title: 'Subscriptions',
                      icon: Icons.add,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _buildFeatureBox(
                      title: 'Boost',
                      icon: Icons.add,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _buildFeatureBox(
                      title: 'Easy Chat',
                      icon: Icons.add,
                    ),
                  ),
                ],
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

  Widget _buildPlanCard(String title) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 8, top: 8, bottom: 8),
      width: 400,
      height: 260,
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
                  Color(0xFFFFFFFF),
                ],
                stops: [0.0, 0.35, 1.0],
              )
            : title == 'Travel VIP'
                ? LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFD7C78A),
                      Color(0xFFE5D8A0),
                      Color(0xFFF0E8C0),
                      Color(0xFFFFFFFF),
                    ],
                    stops: [0.0, 0.35, 0.7, 1.0],
                  )
                : title == 'Travel PLUS'
                    ? LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF5FA3B3),
                          Color(0xFF7AB3C3),
                          Color(0xFF95C3D3),
                          Color(0xFFFFFFFF),
                        ],
                        stops: [0.0, 0.35, 0.7, 1.0],
                      )
                    : null,
        color: (title == 'Travel BLACK' ||
                title == 'Travel PLUS' ||
                title == 'Travel VIP')
            ? null
            : Colors.white,
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
          if (title == 'Travel VIP')
            Positioned(
              top: 18,
              left: 4,
              child: Image.asset(
                'assets/VIP.png',
                width: 170,
                height: 45,
                fit: BoxFit.contain,
              ),
            ),
          if (title == 'Travel PLUS')
            Positioned(
              top: 18,
              left: 4,
              child: Image.asset(
                'assets/plus.png',
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
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          BlackPlanScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 300),
                    ),
                  );
                },
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
          if (title == 'Travel VIP')
            Positioned(
              top: 18,
              right: 4,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          VipPlanScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 300),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB5A35D),
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
          if (title == 'Travel PLUS')
            Positioned(
              top: 18,
              right: 4,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          PlusPlanScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 300),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF275661),
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
          // Feature list content
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  'What\'s Included',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlusJakartaSans',
                  ),
                ),
                SizedBox(height: 8),
                // Plan names header
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'Free',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          _getPlanShortName(title),
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                // Feature rows
                ..._getFeaturesForPlan(title),
                SizedBox(height: 20),
                // "See all features" button
                Center(
                  child: Text(
                    'See all features!',
                    style: TextStyle(
                      color: _getPlanColor(title),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getFeaturesForPlan(String planTitle) {
    List<Map<String, dynamic>> features = [];

    if (planTitle == 'Travel PLUS') {
      features = [
        {'name': 'Unlimited Likes', 'free': false, 'plus': true},
        {'name': 'Unlimited Rewinds', 'free': false, 'plus': true},
        {'name': 'Passport', 'free': false, 'plus': true},
      ];
    } else if (planTitle == 'Travel BLACK') {
      features = [
        {'name': 'See Who Likes You', 'free': false, 'black': true},
        {'name': 'Top Picks', 'free': false, 'black': true},
        {'name': 'Free Super Likes', 'free': false, 'black': true},
      ];
    } else if (planTitle == 'Travel VIP') {
      features = [
        {'name': 'Priority Likes', 'free': false, 'vip': true},
        {'name': 'Pre-Match Chat', 'free': false, 'vip': true},
        {'name': 'See Who Likes You', 'free': false, 'vip': true},
      ];
    }

    return features.map((feature) {
      String planKey = planTitle == 'Travel PLUS'
          ? 'plus'
          : planTitle == 'Travel BLACK'
              ? 'black'
              : 'vip';
      bool isIncluded = feature[planKey] ?? false;

      return Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                feature['name'],
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontFamily: 'PlusJakartaSans',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  '✗',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  isIncluded ? '✓' : '✗',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  Color _getPlanColor(String planTitle) {
    switch (planTitle) {
      case 'Travel PLUS':
        return Color(0xFF275661);
      case 'Travel BLACK':
        return Colors.black;
      case 'Travel VIP':
        return Color(0xFFB5A35D);
      default:
        return Colors.black;
    }
  }

  String _getPlanShortName(String planTitle) {
    switch (planTitle) {
      case 'Travel PLUS':
        return 'Plus';
      case 'Travel BLACK':
        return 'Black';
      case 'Travel VIP':
        return 'VIP';
      default:
        return '';
    }
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

  Widget _buildFeatureBox({
    required String title,
    String? subtitle,
    required IconData icon,
  }) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            // Handle feature box tap
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TM.png image at the top
              Image.asset(
                'assets/TM.png',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 8),
              // Title text
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'PlusJakartaSans',
                ),
                textAlign: TextAlign.center,
              ),
              if (subtitle != null) ...[
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 12,
                    fontFamily: 'PlusJakartaSans',
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
