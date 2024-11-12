import 'package:flutter/material.dart';
import 'package:flutter2/screens/swipeScreen.dart';
import 'package:flutter2/services/profile.dart';

class MessagingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F4E5A),
      body: Column(
        children: [
          // Your People Section
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your people',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Likes Card
                      Container(
                        width: 80,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.red, Colors.black],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '+99',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                            const Text(
                              'Likes',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Jane Profile Cards
                      // Jane Profile Cards

                      Row(
                        children: List.generate(10, (index) => ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 80,
                            height: 100,
                            child: Image.asset(
                              'assets/profile3.jpg', // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        )).expand((widget) => [widget, SizedBox(width: 12)]).toList()..removeLast(),
                                            )
                      // for (int i = 0; i < 4; i++)
                      //   ClipRRect(
                      //     borderRadius: BorderRadius.circular(12),
                      //     child: Container(
                      //       width: 80,
                      //       height: 80,
                      //       margin: const EdgeInsets.only(right:12),
                      //       child: Image.asset(
                      //         'assets/profile3.jpg', // Replace with your image path
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Messages Section
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Messages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Jane',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '8:38 PM',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'hello there!',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Bottom Navigation Bar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
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
                _buildNavButton('assets/icons/Love.png', () {}),
              ],
            ),
          ),
        ],
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