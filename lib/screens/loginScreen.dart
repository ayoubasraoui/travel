// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/background.jpg'), // Your image asset
//             fit: BoxFit.cover, // Cover the entire screen
//           ),
//         ),
//         padding: EdgeInsets.all(24.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   'Welcome to TravelMatch',
//                   style: TextStyle(
//                     fontSize: 28.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   'where you can travel and\nlive new adventures',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 SizedBox(height: 32.0),
//                 TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.email),
//                     hintText: 'Email',
//                     // border: OutlineInputBorder(
//                     //   borderRadius: BorderRadius.circular(8.0),
//                     // ),
//                     filled: true,
//                     fillColor: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 35.0),
//                 Text(
//                   'Email',
//                   textAlign: TextAlign.left,
//                 ),
                
//                 TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.lock),
//                     hintText: 'Password',
//                     // border: OutlineInputBorder(
//                     //   borderRadius: BorderRadius.circular(8.0),
//                     // ),
//                     filled: true,
//                     fillColor: Colors.white,
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 32.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle sign in
//                   },
//                   child: Text('Log in'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     padding: EdgeInsets.symmetric(vertical:16.0),
//                     textStyle: TextStyle(fontSize: 16.0),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 16.0),
//                 TextButton(
//                   onPressed: () {
//                     // Handle create account
//                   },
//                   child: Text(
//                     'Create an account',
//                     style: TextStyle(
//                       color: Color(0xFF4A90E2),
//                     ),
//                   ),
//                   style: TextButton.styleFrom(
//                     padding: EdgeInsets.symmetric(vertical: 16.0),
//                     textStyle: TextStyle(fontSize: 16.0),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.1),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 50),
//                 Text(
//                   'Welcome to\nTravelMatch',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Travel and live new adventures',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: 'Enter your e-mail',
//                     prefixIcon: Icon(Icons.email),
//                     // border: OutlineInputBorder(
//                     //   borderRadius: BorderRadius.circular(8.0),
//                     // ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: 'Enter your password',
//                     prefixIcon: Icon(Icons.lock),
//                     // border: OutlineInputBorder(
//                     //   borderRadius: BorderRadius.circular(8.0),
//                     // ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement login functionality here
//                   },
//                   child: Text('Log In'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     minimumSize: Size(double.infinity, 50),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 TextButton(
//                   onPressed: () {
//                     // Implement account creation functionality here
//                   },
//                   child: Text('Create an account'),
//                   style: TextButton.styleFrom(
//                     foregroundColor: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background.jpg'), // Add the path to your image
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.2),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(
//                       'assets/icons/logo.png',
//                       width: 70, // Adjust size as needed
//                     ),
//                     Spacer(),
//                     Image.asset(
//                       'assets/icons/life.jpg',
//                       width: 40, // Adjust size as needed
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 49),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Welcome to TravelMatch",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     Text(
//                       "Travel and live new adventures",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 30),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Email",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter your e-mail',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700,
//                         ),
//                         prefixIcon: Icon(Icons.email),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Password",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter your password',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700,
//                         ),
//                         prefixIcon: Icon(Icons.lock),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/swipe');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF0055FF),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.zero,
//                         ),
//                         minimumSize: Size(double.infinity, 60),
//                       ),
//                       child: Text(
//                         'Log In',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PlusJakartaSans',
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/register');
//                       },
//                       child: Text(
//                         'Create an account',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PlusJakartaSans',
//                           color: Color(0xFF0055FF),
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.zero,
//                         ),
//                         minimumSize: Size(double.infinity, 60),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Center(
//                       child: Column(
//                         children: [
//                           Text(
//                             'Or login with',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontFamily: 'PlusJakartaSans',
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               IconButton(
//                                 icon: Image.asset('assets/icons/google_logo.png'),
//                                 iconSize: 30, // Make icons smaller
//                                 onPressed: () {
//                                   // Implement Google login functionality here
//                                 },
//                               ),
//                               SizedBox(width: 20),
//                               IconButton(
//                                 icon: Image.asset('assets/icons/facebook_logo.png'),
//                                 iconSize: 30, // Make icons smaller
//                                 onPressed: () {
//                                   // Implement Facebook login functionality here
//                                 },
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background.jpg'), // Add the path to your image
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.2),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(
//                       'assets/icons/logo.png',
//                       width: 70, // Adjust size as needed
//                     ),
//                     Spacer(),
//                     Image.asset(
//                       'assets/icons/life.jpg',
//                       width: 40, // Adjust size as needed
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 49),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Welcome to TravelMatch",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     Text(
//                       "Travel and live new adventures",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 30),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Email",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter your e-mail',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700,
//                         ),
//                         prefixIcon: Icon(Icons.email),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Password",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontFamily: 'PlusJakartaSans',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter your password',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700,
//                         ),
//                         prefixIcon: Icon(Icons.lock),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/swipe');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF0055FF),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.zero,
//                         ),
//                         minimumSize: Size(double.infinity, 60),
//                       ),
//                       child: Text(
//                         'Log In',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PlusJakartaSans',
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/register');
//                       },
//                       child: Text(
//                         'Create an account',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PlusJakartaSans',
//                           color: Color(0xFF0055FF),
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.zero,
//                         ),
//                         minimumSize: Size(double.infinity, 60),
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     Center(
//                       child: Column(
//                         children: [
//                           Text(
//                             'Or login with',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontFamily: 'PlusJakartaSans',
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Flexible(
//                                 child: IconButton(
//                                   icon: Icon(Icons.facebook),
//                                   iconSize: 40, // Make icons smaller
//                                   onPressed: () {
//                                     // Implement Google login functionality here
//                                   },
//                                 ),
//                               ),
//                               SizedBox(width: 20),
//                               Flexible(
//                                 child: IconButton(
//                                   icon: Icon(Icons.facebook),
//                                   iconSize: 40, // Make icons smaller
//                                   onPressed: () {
//                                     // Implement Facebook login functionality here
//                                   },
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   //  SizedBox(height: 16), 
//                   ],
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
import 'package:flutter2/screens/registerScreen.dart';
import 'package:flutter2/screens/swipeScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), // Add the path to your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/icons/logo.png',
                          width: 70, // Adjust size as needed
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/icons/life.jpg',
                          width: 40, // Adjust size as needed
                        ),
                      ],
                    ),
                    SizedBox(height: 49),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to TravelMatch",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Travel and live new adventures",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter your e-mail',
                            hintStyle: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context)=> SwiperScreen())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF0055FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            minimumSize: Size(double.infinity, 60),
                          ),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PlusJakartaSans',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context)=>RegisterScreen())
                            );
                          },
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PlusJakartaSans',
                              color: Color(0xFF0055FF),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            minimumSize: Size(double.infinity, 60),
                          ),
                        ),
                         SizedBox(height: 16),
                        Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      'Or login with',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'PlusJakartaSans',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: IconButton(
                                      icon: Icon(Icons.facebook),
                                      iconSize: 40, // Make icons smaller
                                      onPressed: () {
                                        // Implement Google login functionality here
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Flexible(
                                    child: IconButton(
                                      icon: Icon(Icons.facebook),
                                      iconSize: 40, // Make icons smaller
                                      onPressed: () {
                                        // Implement Facebook login functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}