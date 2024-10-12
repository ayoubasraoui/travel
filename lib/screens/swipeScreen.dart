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





import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter2/animations/slideup.dart';
import 'package:flutter2/services/filter.dart';
import 'dart:math';
import 'package:flutter2/services/profile.dart';

class CardView extends StatelessWidget {
  final String image;
  final String name;
  final String age;

  CardView({required this.image, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              Text(
                ' $age',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SwiperScreen extends StatefulWidget {
  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  final List<Map<String, String>> profiles = [
    {
      'image': 'assets/profile1.jpg',
      'name': 'Jane Doe',
      'age': '22',
    },
    {
      'image': 'assets/profile2.jpg',
      'name': 'John Smith',
      'age': '28',
    },
    {
      'image': 'assets/profile3.jpg',
      'name': 'Alice Johnson',
      'age': '25',
    },
    {
      'image': 'assets/profile4.jpg',
      'name': 'Joe Jain',
      'age': '28',
    },
  ];

  late List<Map<String, String>> extendedProfiles;
  final AppinioSwiperController _controller = AppinioSwiperController();

  @override
  void initState() {
    super.initState();
    // Extend the profiles list to simulate infinite scrolling
    extendedProfiles = List.from(profiles)..addAll(profiles);
    extendedProfiles.shuffle(Random());  // Shuffle to randomize the order
  }

  void _swipeEnd(int previousIndex, int targetIndex, SwiperActivity activity) {
    switch (activity) {
      case Swipe():
        print('The card was swiped to the : ${activity.direction}');
        print('previous index: $previousIndex, target index: $targetIndex');
        break;
      case Unswipe():
        print('A ${activity.direction.name} swipe was undone.');
        print('previous index: $previousIndex, target index: $targetIndex');
        break;
      case CancelSwipe():
        print('A swipe was cancelled');
        break;
      case DrivenActivity():
        print('Driven Activity');
        break;
    }
  }

  void _onEnd() {
    print('End reached!');
    // Optionally, refresh the card list or handle end-of-list actions here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084C61),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: AppinioSwiper(
                controller: _controller,
                invertAngleOnBottomDrag: true,
                backgroundCardCount: 1,
                swipeOptions: const SwipeOptions.all(),
                onSwipeEnd: _swipeEnd,
                onEnd: _onEnd,
                cardCount: extendedProfiles.length,
                cardBuilder: (BuildContext context, int index) {
                  final profile = extendedProfiles[index];
                  return CardView(
                    image: profile['image']!,
                    name: profile['name']!,
                    age: profile['age']!,
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  width: 80,
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
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: ImageIcon(AssetImage('assets/icons/profile.png'), color: Colors.white, size: 25),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context)=>Profile())
                    );
                  },
                ),
                IconButton(
                  icon: ImageIcon(AssetImage('assets/icons/location pin.png'), color: Colors.white, size: 25),
                  onPressed: () {
                    // Handle location icon press
                  },
                ),
                IconButton(
                  icon: ImageIcon(AssetImage('assets/icons/plane.png'), color: Colors.white, size: 25),
                  onPressed: () {
                    // Handle flight icon press
                  },
                ),
                IconButton(
                  icon: ImageIcon(AssetImage('assets/icons/Chat.png'), color: Colors.white, size: 25),
                  onPressed: () {
                    // Handle chat icon press
                  },
                ),
                IconButton(
                  icon: ImageIcon(AssetImage('assets/icons/Love.png'), color: Colors.white, size: 30),
                  onPressed: () {
                    // Handle favorite icon press
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
