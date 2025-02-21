// import 'package:flutter/material.dart';
// import '../styles/app_colors.dart';
// import '../styles/app_text.dart';
// import '../routes.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundColor,
//       appBar: AppBar(title: Text("Login", style: AppText.heading)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Welcome to ExamMate", style: AppText.heading),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.primaryColor,
//               ),
//               onPressed: () {
//                 Navigator.pushNamed(context, AppRoutes.dashboard);
//               },
//               child: Text("Login", style: AppText.body),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/app_text.dart';
import '../routes.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("LOGIN", style: AppText.heading),
              SizedBox(height: 40),
              // Elevated Container for Login Inputs & Forgot Password
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for contrast
                  border: Border.all(color: Colors.black38, width: 1.0), // Black Border
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 2), // Shadow effect
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'User ID',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      text: 'Sign in',
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.signup);
                      },
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        // Handle forgot password
                      },
                      child: Text("Forgot password?", style: AppText.body),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Other Elements Outside the Container
              Text("______ Or sign up with ______", style: AppText.body),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not registered yet? ", style: AppText.body),
                  TextButton(
                    onPressed: () {
                      // Handle create account
                    },
                    child: Text(
                      "Create Account",
                      style: AppText.body.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

