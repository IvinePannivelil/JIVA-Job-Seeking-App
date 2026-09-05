import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_job_seeking/app_route.dart';
import 'package:flutter_job_seeking/headline_widget.dart';
import 'package:flutter_job_seeking/recent_job_widget.dart';
import 'package:flutter_job_seeking/tips_widget.dart';
import 'package:flutter_job_seeking/add_job_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        title: Text(
          "Hi, $username",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove('username'); // Remove username on logout
              Navigator.pushReplacementNamed(context, AppRouteName.login);
            },
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            /// Tips Widget
            HeadlineWidget(
              title: "Tips for you",
              actionText: " ",
            ),
            SizedBox(height: 16),
            TipsWidget(),

            /// Recent Job
            SizedBox(height: 24),
            HeadlineWidget(
              title: "Recent Jobs",
            ),
            SizedBox(height: 16),
            RecentJobWidget(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddJobScreen(),
                  ),
                );
              },
              child: Text("Add Job"),
            ),
          ],
        ),
      ),
    );
  }
}
