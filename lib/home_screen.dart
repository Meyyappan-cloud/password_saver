import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Widget _buildWelcome() {
  return Padding(
    padding: EdgeInsets.only(left: 16, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello, Meyyappan",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text("save your passwords easily and securely"),
      ],
    ),
  );
}

Widget _buildBanner() {
  const primaryPink = Color(0xFFEA4C89);
  const darkPink = Color(0xFFD63E76);

  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    width: double.infinity,
    height: 200,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [primaryPink, darkPink],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Top Icon
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.white.withOpacity(0.2),
          child: Icon(Icons.key, color: Colors.white),
        ),

        /// Title + Subtitle
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Password",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Save your new password with ease",
              style: TextStyle(color: Colors.white.withOpacity(0.9)),
            ),
          ],
        ),

        /// Add New Button
        SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: primaryPink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 0,
            ),
            child: Text(
              "Add New +",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ],
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        titleSpacing: 16,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Left - App Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password Saver",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Secure & Simple",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),

            /// Right - Icons
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFEA4C89).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: Color(0xFFEA4C89),
                  ),
                ),

                CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFFEA4C89),
                  child: Text(
                    "M",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ _buildBanner()],
      ),
    );
  }
}
