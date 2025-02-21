import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/app_text.dart';
import '../routes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(title: Text("Login", style: AppText.heading)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to ExamMate", style: AppText.heading),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.dashboard);
              },
              child: Text("Login", style: AppText.body),
            ),
          ],
        ),
      ),
    );
  }
}
