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
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildWelcome(), _buildBanner()],
      ),
    );
  }
}
