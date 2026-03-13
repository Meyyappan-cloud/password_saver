import 'package:flutter/material.dart';
import 'package:password_saver_app/widgets.dart';

class BackupScreen extends StatefulWidget {
  const BackupScreen({super.key});

  @override
  State<BackupScreen> createState() => _BackupScreenState();
}

class _BackupScreenState extends State<BackupScreen> {
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
                  "Backup",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Last synced: 2 hours ago",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),

            /// Right - Settings/Refresh
            Widgets().buildAppBarIcon(Icons.sync_problem_outlined, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
