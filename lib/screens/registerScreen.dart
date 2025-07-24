import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter2/screens/loginScreen.dart';
import 'package:flutter2/screens/swipeScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/back.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Overlay
            Container(
              color: Colors.black.withOpacity(0.35),
            ),
            // Content
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/icons/logo.png', width: 70),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.2),
                            ),
                            child:
                                Image.asset('assets/icons/life.jpg', width: 24),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Create your account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Sign up to start your adventure",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 40),
                      // Username Input
                      Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CupertinoTextField(
                          controller: _usernameController,
                          placeholder: 'Enter your username',
                          placeholderStyle: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w600,
                          ),
                          prefix: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: Icon(CupertinoIcons.person,
                                color: Colors.white70),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                          style: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 16,
                              color: Colors.white),
                          decoration: null,
                        ),
                      ),
                      SizedBox(height: 24),
                      // Email Input
                      Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CupertinoTextField(
                          controller: _emailController,
                          placeholder: 'Enter your email',
                          placeholderStyle: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w600,
                          ),
                          prefix: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: Icon(CupertinoIcons.mail,
                                color: Colors.white70),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                          style: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 16,
                              color: Colors.white),
                          decoration: null,
                        ),
                      ),
                      SizedBox(height: 24),
                      // Password Input
                      Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CupertinoTextField(
                          controller: _passwordController,
                          placeholder: 'Enter your password',
                          placeholderStyle: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w600,
                          ),
                          prefix: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: Icon(CupertinoIcons.lock,
                                color: Colors.white70),
                          ),
                          suffix: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                              child: Icon(
                                _isPasswordVisible
                                    ? CupertinoIcons.eye_slash
                                    : CupertinoIcons.eye,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          obscureText: !_isPasswordVisible,
                          padding:
                              EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                          style: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 16,
                              color: Colors.white),
                          decoration: null,
                        ),
                      ),
                      SizedBox(height: 24),
                      // Confirm Password Input
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: CupertinoTextField(
                          controller: _confirmPasswordController,
                          placeholder: 'Re-enter your password',
                          placeholderStyle: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w600,
                          ),
                          prefix: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: Icon(CupertinoIcons.lock,
                                color: Colors.white70),
                          ),
                          suffix: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isConfirmPasswordVisible =
                                      !_isConfirmPasswordVisible;
                                });
                              },
                              child: Icon(
                                _isConfirmPasswordVisible
                                    ? CupertinoIcons.eye_slash
                                    : CupertinoIcons.eye,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          obscureText: !_isConfirmPasswordVisible,
                          padding:
                              EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                          style: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontSize: 16,
                              color: Colors.white),
                          decoration: null,
                        ),
                      ),
                      SizedBox(height: 32),
                      // Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: CupertinoButton.filled(
                          borderRadius: BorderRadius.circular(14),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SwiperScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PlusJakartaSans',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      // Or sign up with
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.white54,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Or sign up with',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'PlusJakartaSans',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.white54,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      // Social Sign Up Buttons
                      Row(
                        children: [
                          Expanded(
                            child: CupertinoButton(
                              color: Colors.white.withOpacity(0.85),
                              borderRadius: BorderRadius.circular(12),
                              padding: EdgeInsets.symmetric(vertical: 12),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.mail_solid,
                                      color: Colors.black87, size: 24),
                                  SizedBox(width: 8),
                                  Text(
                                    'Google',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontFamily: 'PlusJakartaSans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: CupertinoButton(
                              color: Colors.white.withOpacity(0.85),
                              borderRadius: BorderRadius.circular(12),
                              padding: EdgeInsets.symmetric(vertical: 12),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.device_phone_portrait,
                                      color: Colors.black87, size: 24),
                                  SizedBox(width: 8),
                                  Text(
                                    'Apple',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontFamily: 'PlusJakartaSans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      // Already have an account
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'PlusJakartaSans',
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: "Already have an account? ",
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Log In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
