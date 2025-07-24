// import 'package:flutter/material.dart';
// import 'package:card_swiper/card_swiper.dart';

// class SwiperScreen extends StatelessWidget {
//   final List<Map<String, String>> profiles = [
//     {
//       'image': 'assets/profile1.jpg',
//       'name': 'Jane Doe',
//       'age': '22',
//     },
//     {
//       'image': 'assets/profile2.jpg',
//       'name': 'John Smith',
//       'age': '28',
//     },
//     {
//       'image': 'assets/profile3.jpg',
//       'name': 'Alice Johnson',
//       'age': '25',
//     },
//     {
//       'image': 'assets/profile4.jpg',
//       'name': 'joe jain',
//       'age': '28',
//     },
//   ];

//     @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61),
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 0.0),
//             child: Swiper(
//               itemCount: profiles.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Stack(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(37),
//                       child: Image.asset(
//                         profiles[index]['image']!,
//                         fit: BoxFit.cover,
//                         height: MediaQuery.of(context).size.height * 0.8,
//                         width: double.infinity,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 30,
//                       left: 20,
//                       child: Row(
//                         children: [
//                           Text(
//                             '${profiles[index]['name']}',
//                             style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               shadows: [
//                                 Shadow(
//                                   blurRadius: 10.0,
//                                   color: Colors.black,
//                                   offset: Offset(5.0, 5.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Text(
//                             ' ${profiles[index]['age']}',
//                             style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               shadows: [
//                                 Shadow(
//                                   blurRadius: 10.0,
//                                   color: Colors.black,
//                                   offset: Offset(5.0, 5.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(width: 5),
//                           Icon(
//                             Icons.check_circle,
//                             color: Colors.blue,
//                             size: 24,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 );
//               },
//               layout: SwiperLayout.TINDER,
//               itemWidth: MediaQuery.of(context).size.width,
//               itemHeight: MediaQuery.of(context).size.height * 0.8,
//             ),
//           ),
//           Positioned(
//             top: 55,
//             left: 16,
//             right: 16,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Image.asset(
//                   'assets/icons/logo.png',
//                   width: 80, // Adjust size as needed
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Implement filter icon functionality here
//                   },
//                   child: Icon(Icons.filter_alt_outlined,
//                     color: Colors.white,
//                     weight: 50,
//                     ),
//                     // width: 30, // Adjust size as needed
//                   ),
//                 // ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 20,
//             left: 0,
//             right: 0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/profile.png'), color: Colors.white, size:25),
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/profile');
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/location pin.png'), color: Colors.white, size:25),
//                   onPressed: () {
//                     // Handle group icon press
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/plane.png'), color: Colors.white, size:25),
//                   onPressed: () {
//                     // Handle flight icon press
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/Chat.png'), color: Colors.white, size:25),
//                   onPressed: () {
//                     // Handle chat icon press
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/Love.png'), color: Colors.white, size:30),
//                   onPressed: () {
//                     // Handle favorite icon press
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// final version ....

// import 'package:flutter/material.dart';
// import 'package:appinio_swiper/appinio_swiper.dart';
// import 'package:flutter2/animations/slideup.dart';
// import 'package:flutter2/services/filter.dart';
// import 'dart:math';
// import 'package:flutter2/services/profile.dart';
// import 'package:flutter2/services/likes.dart';

// class CardView extends StatelessWidget {
//   final String image;
//   final String name;
//   final String age;

//   CardView({required this.image, required this.name, required this.age});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: Image.asset(
//             image,
//             fit: BoxFit.cover,
//             height: MediaQuery.of(context).size.height * 0.8,
//             width: double.infinity,
//           ),
//         ),
//         Positioned(
//           bottom: 30,
//           left: 20,
//           child: Row(
//             children: [
//               Text(
//                 name,
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 10.0,
//                       color: Colors.black,
//                       offset: Offset(5.0, 5.0),
//                     ),
//                   ],
//                 ),
//               ),
//               Text(
//                 ' $age',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 10.0,
//                       color: Colors.black,
//                       offset: Offset(5.0, 5.0),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class SwiperScreen extends StatefulWidget {
//   @override
//   _SwiperScreenState createState() => _SwiperScreenState();
// }

// class _SwiperScreenState extends State<SwiperScreen> {
//   final List<Map<String, String>> profiles = [
//     {
//       'image': 'assets/profile1.jpg',
//       'name': 'Jane Doe',
//       'age': '22',
//     },
//     {
//       'image': 'assets/profile2.jpg',
//       'name': 'John Smith',
//       'age': '28',
//     },
//     {
//       'image': 'assets/profile3.jpg',
//       'name': 'Alice Johnson',
//       'age': '25',
//     },
//     {
//       'image': 'assets/profile4.jpg',
//       'name': 'Joe Jain',
//       'age': '28',
//     },
//   ];

//   late List<Map<String, String>> extendedProfiles;
//   final AppinioSwiperController _controller = AppinioSwiperController();

//   @override
//   void initState() {
//     super.initState();
//     // Extend the profiles list to simulate infinite scrolling
//     extendedProfiles = List.from(profiles)..addAll(profiles);
//     extendedProfiles.shuffle(Random());  // Shuffle to randomize the order
//   }

//   void _swipeEnd(int previousIndex, int targetIndex, SwiperActivity activity) {
//     switch (activity) {
//       case Swipe():
//         print('The card was swiped to the : ${activity.direction}');
//         print('previous index: $previousIndex, target index: $targetIndex');
//         break;
//       case Unswipe():
//         print('A ${activity.direction.name} swipe was undone.');
//         print('previous index: $previousIndex, target index: $targetIndex');
//         break;
//       case CancelSwipe():
//         print('A swipe was cancelled');
//         break;
//       case DrivenActivity():
//         print('Driven Activity');
//         break;
//     }
//   }

//   void _onEnd() {
//     print('End reached!');
//     // Optionally, refresh the card list or handle end-of-list actions here
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61),
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
//             child: SizedBox(
//               height: MediaQuery.of(context).size.height * 0.75,
//               child: AppinioSwiper(
//                 controller: _controller,
//                 invertAngleOnBottomDrag: true,
//                 backgroundCardCount: 1,
//                 swipeOptions: const SwipeOptions.all(),
//                 onSwipeEnd: _swipeEnd,
//                 onEnd: _onEnd,
//                 cardCount: extendedProfiles.length,
//                 cardBuilder: (BuildContext context, int index) {
//                   final profile = extendedProfiles[index];
//                   return CardView(
//                     image: profile['image']!,
//                     name: profile['name']!,
//                     age: profile['age']!,
//                   );
//                 },
//               ),
//             ),
//           ),
//           Positioned(
//             top: 50,
//             left: 16,
//             right: 16,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Image.asset(
//                   'assets/icons/logo.png',
//                   width: 80,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       SlideUpPageRoute(page: FilterScreen()),
//                       );
//                   },
//                   child: Icon(
//                     Icons.filter_alt_outlined,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 20,
//             left: 0,
//             right: 0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/profile.png'), color: Colors.white, size: 25),
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context)=>Profile())
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/location pin.png'), color: Colors.white, size: 25),
//                   onPressed: () {
//                     // Handle location icon press
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/plane.png'), color: Colors.white, size: 25),
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context)=>SwiperScreen())
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/Chat.png'), color: Colors.white, size: 25),
//                   onPressed: () {
//                     // Handle chat icon press
//                   },
//                 ),
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/icons/Love.png'), color: Colors.white, size: 30),
//                   onPressed: () {
//                     // Handle favorite icon press
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/services.dart';
import 'package:flutter2/animations/slideup.dart';
import 'package:flutter2/services/chat.dart';
import 'package:flutter2/services/filter.dart';
import 'package:flutter2/services/posts.dart';
import 'dart:math';
import 'package:flutter2/services/profile.dart';
import 'package:flutter2/services/likes.dart';

class CardView extends StatelessWidget {
  final String image;
  final String name;
  final String age;
  final String location;
  final String bio;
  final List<String> interests;

  CardView({
    required this.image,
    required this.name,
    required this.age,
    required this.location,
    required this.bio,
    required this.interests,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDetailedProfile(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Main Image
            Hero(
              tag: 'profile_$name',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: double.infinity,
                ),
              ),
            ),
            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                  ],
                  stops: [0.6, 1.0],
                ),
              ),
            ),
            // User Info
            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        age,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white.withOpacity(0.9),
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    bio,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14,
                      fontFamily: 'PlusJakartaSans',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: interests
                        .map((interest) => _buildInterestTag(interest))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestTag(String interest) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white24),
      ),
      child: Text(
        interest,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'PlusJakartaSans',
        ),
      ),
    );
  }

  void _showDetailedProfile(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _buildDetailedProfile(context),
    );
  }

  Widget _buildDetailedProfile(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xFF181A20),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: ListView(
            controller: scrollController,
            children: [
              Stack(
                children: [
                  // Profile Image
                  Hero(
                    tag: 'profile_$name',
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Close Button
                  Positioned(
                    top: 20,
                    right: 20,
                    child: IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$name, $age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'PlusJakartaSans',
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Colors.white, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  location,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                    fontFamily: 'PlusJakartaSans',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessagingScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                          ),
                          child: Text(
                            'Message',
                            style: TextStyle(
                              // color: Color(0xFF084C61),
                              color: Color(0xFF181A20),
                              fontFamily: 'PlusJakartaSans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      bio,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontFamily: 'PlusJakartaSans',
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Interests',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                      ),
                    ),
                    SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: interests
                          .map((interest) => _buildInterestTag(interest))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SwiperScreen extends StatefulWidget {
  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  final List<Map<String, dynamic>> profiles = [
    {
      'image': 'assets/profile1.jpg',
      'name': 'Jane Doe',
      'age': '22',
      'location': 'New York, USA',
      'bio':
          'Adventure seeker and photography enthusiast. Looking for travel buddies to explore new destinations!',
      'interests': ['Adventure', 'Photography', 'Culture', 'Food', 'Hiking'],
    },
    {
      'image': 'assets/profile2.jpg',
      'name': 'John Smith',
      'age': '28',
      'location': 'London, UK',
      'bio':
          'Travel blogger and coffee addict. Always planning the next adventure!',
      'interests': ['Coffee', 'Blogging', 'Adventure', 'City Walks'],
    },
    {
      'image': 'assets/profile3.jpg',
      'name': 'Alice Johnson',
      'age': '25',
      'location': 'Paris, France',
      'bio':
          'Art lover and foodie. Seeking companions for museum tours and culinary adventures.',
      'interests': ['Art', 'Food', 'Museums', 'Wine Tasting'],
    },
    {
      'image': 'assets/profile4.jpg',
      'name': 'Joe Jain',
      'age': '28',
      'location': 'Mumbai, India',
      'bio':
          'Tech nomad working remotely. Love exploring local markets and street food.',
      'interests': ['Technology', 'Street Food', 'Markets', 'Remote Work'],
    },
  ];

  late List<Map<String, dynamic>> extendedProfiles;
  final AppinioSwiperController _controller = AppinioSwiperController();

  @override
  void initState() {
    super.initState();
    extendedProfiles = List.from(profiles)..addAll(profiles);
    extendedProfiles.shuffle(Random());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF181A20), // solid dark background
        ),
        child: Stack(
          children: [
            // Top Bar
            Positioned(
              top: 35,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/logo.png',
                    width: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SlideUpPageRoute(page: FilterScreen()),
                      );
                    },
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.white.withOpacity(0.85),
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            // Swiper Cards
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 100),
              child: AppinioSwiper(
                controller: _controller,
                invertAngleOnBottomDrag: true,
                backgroundCardCount: 2,
                swipeOptions: const SwipeOptions.all(),
                onSwipeEnd: _handleSwipe,
                onEnd: _handleEnd,
                cardCount: extendedProfiles.length,
                cardBuilder: (BuildContext context, int index) {
                  final profile = extendedProfiles[index];
                  return CardView(
                    image: profile['image']!,
                    name: profile['name']!,
                    age: profile['age']!,
                    location: profile['location']!,
                    bio: profile['bio']!,
                    interests: List<String>.from(profile['interests']),
                  );
                },
              ),
            ),
            // Bottom Navigation Bar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavButton('assets/icons/profile.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
                    _buildNavButton('assets/icons/location pin.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
                    // _buildNavButton(
                    //     'assets/icons/plane.png',
                    //     () => Navigator.pushReplacement(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => SwiperScreen()))),
                    IconButton(
                      icon: ImageIcon(
                        AssetImage('assets/icons/plane.png'),
                        color: Color(0xFF43716C),
                        size: 26,
                      ),
                      onPressed: () {},
                    ),
                    _buildNavButton('assets/icons/Chat.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
                    _buildNavButton('assets/icons/Love.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(String icon, VoidCallback onPressed,
      {bool isActive = false}) {
    return IconButton(
      icon: ImageIcon(
        AssetImage(icon),
        color: Colors.white,
        size: 26,
      ),
      onPressed: onPressed,
    );
  }

  void _handleSwipe(
      int previousIndex, int targetIndex, SwiperActivity activity) {
    if (activity is Swipe) {
      HapticFeedback.mediumImpact();
    }
  }

  void _handleEnd() {
    setState(() {
      extendedProfiles.shuffle(Random());
    });
  }
}
