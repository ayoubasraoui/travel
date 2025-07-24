// import 'package:flutter/material.dart';
// import 'dart:ui';
// import 'package:flutter2/screens/swipeScreen.dart';
// import 'package:flutter2/services/profile.dart';
// class LikeScreen extends StatefulWidget {
//   @override
//   _LikeScreenState createState() => _LikeScreenState();
// }

// class _LikeScreenState extends State<LikeScreen> {
//   int _selectedIndex = 0;
//   final List<String> _tabs = ["Interested", "Your Interests", "Suggestions"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61), // Dark teal background color
//       appBar: AppBar(
//         backgroundColor: Color(0xFF084C61), // Same as background color
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           "Travelmatch",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Column(
//         children: [
//           // Top Tab Bar
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(_tabs.length, (index) {
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _selectedIndex = index;
//                     });
//                   },
//                   child: Column(
//                     children: [
//                       Text(
//                         _tabs[index],
//                         style: TextStyle(
//                           color: _selectedIndex == index
//                               ? Colors.white
//                               : Colors.grey[400],
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       if (_selectedIndex == index)
//                         Container(
//                           margin: EdgeInsets.only(top: 5),
//                           height: 2,
//                           width: 30,
//                           color: Colors.white,
//                         ),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           ),
//           // Profiles Grid
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: GridView.builder(
//                 itemCount: 6, // Number of profile images
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 3 / 4, // Adjust for image aspect ratio
//                 ),
//                 itemBuilder: (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[400],
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(15),
//                       child: Image.asset(
//                         'assets/profile1.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         color: Color(0xFF084C61),
//         padding: EdgeInsets.symmetric(vertical: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/profile.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => Profile()),
//                 );
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/location pin.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 // Handle location icon press
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/plane.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context)=>SwiperScreen())
//                     );
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/Chat.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 // Handle chat icon press
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/Love.png'),
//                 color: Colors.white,
//                 size: 30,
//               ),
//               onPressed: () {
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// final version could change##############################################

// import 'dart:ui'; // Import for blur effect
// import 'package:flutter/material.dart';
// import 'package:flutter2/screens/swipeScreen.dart';
// import 'package:flutter2/services/profile.dart';

// class LikeScreen extends StatefulWidget {
//   @override
//   _LikeScreenState createState() => _LikeScreenState();
// }

// class _LikeScreenState extends State<LikeScreen> {
//   int _selectedIndex = 0;
//   final List<String> _tabs = ["Interested", "Your Interests", "Suggestions"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61), // Dark teal background color
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(90.0), // Increase the height as needed
//         child: AppBar(
//           backgroundColor: Color(0xFF084C61), // Same as background color
//           elevation: 0,
//           centerTitle: true,
//           title: Padding(
//             padding: EdgeInsets.only(top: 30), // Adjusts the position of the logo
//             child: Image.asset(
//               'assets/icons/logo.png', // Path to your logo image
//               height: 35, // Adjust the height of the logo
//               fit: BoxFit.contain,
//               width: 75,
//       ),
//     ),
//   ),
// ),

//       body: Column(
//         children: [
//           // Top Tab Bar
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(_tabs.length, (index) {
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _selectedIndex = index;
//                     });
//                   },
//                   child: Column(
//                     children: [
//                       Text(
//                         _tabs[index],
//                         style: TextStyle(
//                           color: _selectedIndex == index
//                               ? Colors.white
//                               : Colors.grey[400],
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       if (_selectedIndex == index)
//                         Container(
//                           margin: EdgeInsets.only(top: 5),
//                           height: 2,
//                           width: 30,
//                           color: Colors.white,
//                         ),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           ),
//           // Profiles Grid with blur effect
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: GridView.builder(
//                 itemCount: 10, // Number of profile images
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 3 / 4, // Adjust for image aspect ratio
//                 ),
//                 itemBuilder: (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[400],
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(15),
//                       child: Stack(
//                         fit: StackFit.expand,
//                         children: [
//                           Image.asset(
//                             'assets/profile1.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                           Positioned.fill(
//                             child: BackdropFilter(
//                               filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                               child: Container(
//                                 color: Colors.black.withOpacity(0.3), // Adjust opacity for a dimmed effect
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         color: Color(0xFF084C61),
//         padding: EdgeInsets.symmetric(vertical: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/profile.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => Profile()),
//                 );
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/location pin.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 // Handle location icon press
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/plane.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => SwiperScreen()),
//                 );
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/Chat.png'),
//                 color: Colors.white,
//                 size: 25,
//               ),
//               onPressed: () {
//                 // Handle chat icon press
//               },
//             ),
//             IconButton(
//               icon: ImageIcon(
//                 AssetImage('assets/icons/Love.png'),
//                 color: Colors.white,
//                 size: 30,
//               ),
//               onPressed: () {
//                 // Handle love icon press
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter2/screens/swipeScreen.dart';
import 'package:flutter2/services/posts.dart';
import 'package:flutter2/services/profile.dart';
import 'package:flutter2/services/chat.dart'; // Added import for MessagingScreen

class LikeScreen extends StatefulWidget {
  @override
  _LikeScreenState createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _tabs = [
    {"title": "Interested", "count": 12},
    {"title": "Your Interests", "count": 8},
    {"title": "Suggestions", "count": 15}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF181A20),
              Color(0xFF181A20),
            ],
          ),
        ),
        child: Column(
          children: [
            // App Bar with Logo
            Container(
              padding: EdgeInsets.only(top: 35, bottom: 10),
              child: Image.asset(
                'assets/icons/logo.png',
                height: 35,
                fit: BoxFit.contain,
                width: 75,
              ),
            ),

            // Fixed Tab Bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: List.generate(_tabs.length, (index) {
                  bool isSelected = _selectedIndex == index;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.white.withOpacity(0.2)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                _tabs[index]["title"],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.6),
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.white.withOpacity(0.2)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "${_tabs[index]["count"]}",
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.6),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),

            // Profiles Grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // Profile Image with conditional blur
                            _selectedIndex == 0
                                ? ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Image.asset(
                                      'assets/profile1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Image.asset(
                                    'assets/profile1.jpg',
                                    fit: BoxFit.cover,
                                  ),
                            // Gradient Overlay
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7),
                                  ],
                                ),
                              ),
                            ),
                            // Profile Info
                            Positioned(
                              bottom: 12,
                              left: 12,
                              right: 12,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Sarah, 24',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Adventure Seeker',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Interest Badge
                            if (_selectedIndex == 0)
                              Positioned(
                                top: 12,
                                right: 12,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.favorite,
                                          color: Colors.red, size: 16),
                                      SizedBox(width: 4),
                                      Text(
                                        '2d ago',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            // Unlock Premium Overlay for Interested Tab
                            if (_selectedIndex == 0)
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.lock_outline,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Unlock Premium',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Bottom Navigation Bar
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavButton('assets/icons/profile.png', () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            Profile(),
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
                  }),
                  // _buildNavButton('assets/icons/location pin.png', () {}),
                  _buildNavButton('assets/icons/location pin.png', () {
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
                  }),

                  _buildNavButton('assets/icons/plane.png', () {
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
                  }),
                  _buildNavButton('assets/icons/Chat.png', () {
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
                  }),
                  // _buildNavButton('assets/icons/Love.png', () {
                  //   // Handle love icon press
                  // }),
                  IconButton(
                      icon: ImageIcon(
                        AssetImage('assets/icons/Love.png'),
                        color: Color(0xFF43716C),
                        size: 26,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(String icon, VoidCallback onPressed) {
    return IconButton(
      icon: ImageIcon(
        AssetImage(icon),
        color: Colors.white,
        size: 26,
      ),
      onPressed: onPressed,
    );
  }
}
