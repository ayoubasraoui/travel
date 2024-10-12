// import 'package:flutter/material.dart';
// class RegisterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/back.jpg'), // Replace with your image path
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.4), // Adjust opacity here
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 50),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(
//                       'assets/icons/logo.png',
//                       width: 100, // Adjust size as needed
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         // Implement icon functionality here
//                       },
//                       child: Image.asset(
//                         'assets/icons/life.jpg',
//                         width: 50, // Adjust size as needed
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 40), // Add space between the row and the text
//                 Text(
//                   "Create your account",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'PlusJakartaSans',
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Username",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'PlusJakartaSans',
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     TextField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter your username',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                         ),
//                        prefixIcon: Icon(Icons.account_circle),
//                         // border: OutlineInputBorder(
//                         //   borderRadius: BorderRadius.circular(8.0),
//                         // ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Email",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'PlusJakartaSans',
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     TextField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter your e-mail',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                         ),
//                         prefixIcon: Icon(Icons.mail),
//                         // border: OutlineInputBorder(
//                         //   borderRadius: BorderRadius.circular(8.0),
//                         // ),
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
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'PlusJakartaSans',
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter your password',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                         ),
//                         prefixIcon: Icon(Icons.lock),
//                         // border: OutlineInputBorder(
//                         //   borderRadius: BorderRadius.circular(8.0),
//                         // ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Check Password",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'PlusJakartaSans',
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Re-enter your password',
//                         hintStyle: TextStyle(
//                           fontFamily: 'PlusJakartaSans',
//                         ),
//                         prefixIcon: Icon(Icons.lock),
//                         // border: OutlineInputBorder(
//                         //   borderRadius: BorderRadius.circular(8.0),
//                         // ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 35), // Adjust this size as needed
//                 ElevatedButton(
//                   onPressed: () {
//                      Navigator.pushNamed(context, '/swipe');
//                   },
//                   child: Text('Create account',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                       fontFamily: 'PlusJakartaSans',
//                       color: Colors.white
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF0055FF), // Custom color
//                     minimumSize: Size(double.infinity, 60),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.zero, // No border radius
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: () {
//                      Navigator.pop(context);
//                   },
//                   child: Text('Already have an account? Log In',
//                     style:TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                       fontFamily: 'PlusJakartaSans',
//                       color: Color(0xFF0055FF)
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.zero,),
//                     minimumSize: Size(double.infinity, 60),
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


import 'package:flutter/material.dart';
import 'package:flutter2/screens/loginScreen.dart';
import 'package:flutter2/screens/swipeScreen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.4), // Adjust opacity here
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/icons/logo.png',
                          width: 80, // Adjust size as needed
                        ),
                        GestureDetector(
                          onTap: () {
                            // Implement icon functionality here
                          },
                          child: Image.asset(
                            'assets/icons/life.jpg',
                            width: 40, // Adjust size as needed
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30), // Add space between the row and the text
                    Text(
                      "Create your account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30, // Adjust size as needed
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14, // Adjust size as needed
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        SizedBox(height: 6),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter your username',
                            hintStyle: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 14, // Adjust size as needed
                            ),
                            prefixIcon: Icon(Icons.account_circle, size: 20), // Adjust size as needed
                            contentPadding: EdgeInsets.symmetric(vertical: 10), // Adjust padding
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14, // Adjust size as needed
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        SizedBox(height: 6),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter your e-mail',
                            hintStyle: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 14, // Adjust size as needed
                            ),
                            prefixIcon: Icon(Icons.mail, size: 20), // Adjust size as needed
                            contentPadding: EdgeInsets.symmetric(vertical: 10), // Adjust padding
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14, // Adjust size as needed
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        SizedBox(height: 6),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 14, // Adjust size as needed
                            ),
                            prefixIcon: Icon(Icons.lock, size: 20), // Adjust size as needed
                            contentPadding: EdgeInsets.symmetric(vertical: 10), // Adjust padding
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Check Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14, // Adjust size as needed
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        SizedBox(height: 6),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Re-enter your password',
                            hintStyle: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 14, // Adjust size as needed
                            ),
                            prefixIcon: Icon(Icons.lock, size: 20), // Adjust size as needed
                            contentPadding: EdgeInsets.symmetric(vertical: 10), // Adjust padding
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25), // Adjust this size as needed
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context)=>SwiperScreen())
                          );
                      },
                      child: Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 16, // Adjust size as needed
                          fontWeight: FontWeight.w700,
                          fontFamily: 'PlusJakartaSans',
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0055FF), // Custom color
                        minimumSize: Size(double.infinity, 50), // Adjust size as needed
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, // No border radius
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context)=> LoginScreen())
                        );
                      },
                      child: Text(
                        'Already have an account? Log In',
                        style: TextStyle(
                          fontSize: 16, // Adjust size as needed
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
                        minimumSize: Size(double.infinity, 50), // Adjust size as needed
                      ),
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
