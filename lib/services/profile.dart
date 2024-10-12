import 'package:flutter/material.dart';
import 'package:flutter2/screens/loginScreen.dart';
import 'package:flutter2/screens/swipeScreen.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084C61), // Background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20), // Space from the top
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context)=>SwiperScreen())
                      );
                  },
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'PlusJakartaSans',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 48), // Placeholder to balance the row
              ],
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile1.jpg'), // Replace with your profile image path
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.edit, color: Colors.black, size: 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Jane Doe, 22',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 90),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Profile settings', style: TextStyle(fontFamily: 'PlusJakartaSans')),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle Profile settings tap
                },
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.black),
                title: Text('App settings', style: TextStyle(fontFamily: 'PlusJakartaSans')),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle App settings tap
                },
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: ListTile(
                leading: Icon(Icons.subscriptions, color: Colors.black),
                title: Text('Subscription', style: TextStyle(fontFamily: 'PlusJakartaSans')),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle Subscription tap
                },
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.description, color: Colors.black),
                title: Text('Terms and conditions', style: TextStyle(fontFamily: 'PlusJakartaSans')),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle Terms and conditions tap
                },
              ),
            ),
            SizedBox(height: 75),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>LoginScreen())
                  );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.red), // Add the logout icon
                  SizedBox(width: 8), // Space between icon and text
                  Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 3),
            ElevatedButton(
              onPressed: () {
                // Handle delete account
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.delete, color: Colors.red), // Add the delete icon
                  SizedBox(width: 8), // Space between icon and text
                  Text(
                    'Delete account',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
