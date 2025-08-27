import 'package:flutter/material.dart';
import 'package:flutter2/screens/swipeScreen.dart';
import 'package:flutter2/services/chatRoomScreen.dart';
import 'package:flutter2/services/likes.dart';
import 'package:flutter2/services/posts.dart';
import 'package:flutter2/services/profile.dart';
import 'package:flutter2/data/demo_users.dart'; // <-- shared users

class MessagingScreen extends StatelessWidget {
  // Demo users (shared across app)
  final List<Map<String, dynamic>> users = demoUsers;

  // Shared sizing for BOTH the "+99 Likes" tile and user avatars
  static const double kPeopleTileSize = 96; // change once to resize all squares
  static const double kPeopleTileRadius = 14;
  static const double kPeopleTileGap = 8; // tighter spacing between tiles

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SafeArea(
        child: Container(
          color: const Color(0xFF181A20),
          child: Column(
            children: [
              // Top Bar
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/logo.png', width: 70),
                    IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: () async {
                        // Open in-app search that filters both "Your people" and "Messages"
                        final selected =
                            await showSearch<Map<String, dynamic>?>(
                          context: context,
                          delegate: UserSearchDelegate(users),
                        );
                        if (selected != null && context.mounted) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChatRoomScreen(
                                userName: selected['name'],
                                userImage: selected['image'],
                                age: selected['age'],
                                location: selected['location'],
                                bio: selected['bio'],
                                interests:
                                    List<String>.from(selected['interests']),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),

              // =========================
              //       Your People
              // =========================
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your people',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'PlusJakartaSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Height = square tile + label below
                    SizedBox(
                      height: kPeopleTileSize + 34,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        children: [
                          // Likes tile (SAME SIZE as avatars)
                          _peopleTile(
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.10),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      '+99',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            label: 'Likes',
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a, s) => LikeScreen(),
                                  transitionsBuilder: (c, a, s, child) =>
                                      FadeTransition(opacity: a, child: child),
                                  transitionDuration:
                                      const Duration(milliseconds: 200),
                                ),
                              );
                            },
                          ),

                          // Profile tiles (SAME SIZE)
                          ...List.generate(users.length, (index) {
                            final u = users[index];
                            return _peopleTile(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(kPeopleTileRadius),
                                child: Image.asset(
                                  u['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              label: u['name'].toString().split(' ').first,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatRoomScreen(
                                      userName: u['name'],
                                      userImage: u['image'],
                                      age: u['age'],
                                      location: u['location'],
                                      bio: u['bio'],
                                      interests:
                                          List<String>.from(u['interests']),
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // =========================
              //         Messages
              // =========================
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.only(top: 24),
                  decoration: const BoxDecoration(
                    color: Color(0xFF181A20),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChatRoomScreen(
                                          userName: user['name'],
                                          userImage: user['image'],
                                          age: user['age'],
                                          location: user['location'],
                                          bio: user['bio'],
                                          interests: List<String>.from(
                                              user['interests']),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Image.asset(
                                            user['image'],
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    user['name'],
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          'PlusJakartaSans',
                                                    ),
                                                  ),
                                                  Text(
                                                    '8:38 PM',
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.6),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 4),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Tap to chat with ${user['name'].toString().split(' ').first}...',
                                                      style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.8),
                                                        fontFamily:
                                                            'PlusJakartaSans',
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 0.5,
                                  color: Colors.grey.withOpacity(0.3),
                                  indent: 16,
                                  endIndent: 16,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // =========================
              //   Bottom Navigation Bar
              // =========================
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavButton('assets/icons/profile.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a, s) => Profile(),
                          transitionsBuilder: (c, a, s, child) =>
                              FadeTransition(opacity: a, child: child),
                          transitionDuration: const Duration(milliseconds: 200),
                        ),
                      );
                    }),
                    _buildNavButton('assets/icons/location pin.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a, s) => SocialFeedScreen(),
                          transitionsBuilder: (c, a, s, child) =>
                              FadeTransition(opacity: a, child: child),
                          transitionDuration: const Duration(milliseconds: 200),
                        ),
                      );
                    }),
                    _buildNavButton('assets/icons/plane.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a, s) => SwiperScreen(),
                          transitionsBuilder: (c, a, s, child) =>
                              FadeTransition(opacity: a, child: child),
                          transitionDuration: const Duration(milliseconds: 200),
                        ),
                      );
                    }),
                    IconButton(
                      icon: const ImageIcon(
                        AssetImage('assets/icons/Chat.png'),
                        color: Color(0xFF43716C),
                        size: 26,
                      ),
                      onPressed: () {},
                    ),
                    _buildNavButton('assets/icons/Love.png', () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a, s) => LikeScreen(),
                          transitionsBuilder: (c, a, s, child) =>
                              FadeTransition(opacity: a, child: child),
                          transitionDuration: const Duration(milliseconds: 200),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =========================
  // Helpers
  // =========================
  Widget _peopleTile({
    required Widget child,
    required String label,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: kPeopleTileGap),
        child: Column(
          children: [
            SizedBox.square(
              dimension: kPeopleTileSize,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF23242A),
                  borderRadius: BorderRadius.circular(kPeopleTileRadius),
                  border: Border.all(color: Colors.white24),
                ),
                clipBehavior: Clip.hardEdge,
                child: child,
              ),
            ),
            const SizedBox(height: 6),
            SizedBox(
              width: kPeopleTileSize,
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'PlusJakartaSans',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(String icon, VoidCallback onPressed) {
    return Container(
      decoration: const BoxDecoration(
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
}

/// Search across both "Your people" and "Messages"
class UserSearchDelegate extends SearchDelegate<Map<String, dynamic>?> {
  final List<Map<String, dynamic>> users;
  UserSearchDelegate(this.users);

  @override
  String get searchFieldLabel => 'Search people or chats';

  @override
  ThemeData appBarTheme(BuildContext context) {
    final base = Theme.of(context);
    return base.copyWith(
      scaffoldBackgroundColor: const Color(0xFF181A20),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF181A20),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white54),
        border: InputBorder.none,
      ),
      textTheme: base.textTheme.apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  List<Map<String, dynamic>> _filter() {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return users;
    return users.where((u) {
      final name = (u['name'] as String).toLowerCase();
      final location = (u['location'] as String).toLowerCase();
      final interests = (u['interests'] as List).join(' ').toLowerCase();
      return name.contains(q) || location.contains(q) || interests.contains(q);
    }).toList();
  }

  Widget _buildList(BuildContext context) {
    final results = _filter();
    if (results.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'No matches found',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      );
    }

    return ListView.separated(
      itemCount: results.length,
      separatorBuilder: (_, __) => Divider(
        color: Colors.white.withOpacity(0.1),
        height: 1,
        indent: 72,
        endIndent: 16,
      ),
      itemBuilder: (context, i) {
        final u = results[i];
        return ListTile(
          onTap: () => close(context, u),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(
              u['image'],
              width: 44,
              height: 44,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            u['name'],
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            u['location'],
            style: const TextStyle(color: Colors.white70),
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.white54),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => _buildList(context);

  @override
  Widget buildSuggestions(BuildContext context) => _buildList(context);
}
