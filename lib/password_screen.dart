import 'package:flutter/material.dart';
import 'package:password_saver_app/widgets.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {

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
            /// Left - Page Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "My Vault",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "24 Passwords Saved",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),

            /// Right - Search & Add Actions
            Row(
              children: [
                Widgets().buildAppBarIcon(Icons.search),
                const SizedBox(width: 8),
                Widgets().buildAppBarIcon(Icons.add, isPrimary: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
