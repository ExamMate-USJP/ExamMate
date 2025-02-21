import 'package:flutter/material.dart';
import '../routes.dart';
import '../widgets/custom_button.dart';
import '../styles/app_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height, // Ensures full height
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              // Background Image
              Positioned.fill(
                child: Image.asset(
                  'assets/images/splash_background.png',
                  fit: BoxFit.cover,
                ),
              ),

              // Overlay Gradient
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(
                          255,
                          255,
                          255,
                          0.1,
                        ), // White with 10% opacity
                        Color.fromRGBO(
                          230,
                          110,
                          83,
                          0.4,
                        ), // Light orange with 40% opacity
                        Color.fromRGBO(
                          230,
                          110,
                          83,
                          0.9,
                        ), // Darker orange with 90% opacity
                        Color.fromRGBO(230, 110, 83, 1.0),
                      ],
                    ),
                  ),
                ),
              ),

              // Content
              Align(
                alignment:
                    Alignment.bottomCenter, // Positions content at the bottom
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40,
                  ), // Adjust bottom padding
                  child: Column(
                    mainAxisSize:
                        MainAxisSize
                            .min, // Ensures the column only takes necessary space
                    children: [
                      // Logo & Tagline
                      Image.asset(
                        'assets/logo/logo-white-nobg.png', // Ensure this exists in assets
                        height: 100,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Prepare. Practice. Perform.',
                        style: AppStyles.subtitleStyle,
                      ),
                      Text(
                        '"Your Exam Companion, Every Step of the Way."',
                        style: AppStyles.subtitleStyle,
                      ),
                      SizedBox(height: 20),

                      // Sign In Button
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width *
                            0.8, // 80% of screen width
                        child: CustomButton(
                          text: 'Sign In',
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.login);
                          },
                        ),
                      ),
                      SizedBox(height: 10),

                      // Sign Up Button
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: CustomButton(
                          text: 'Sign Up',
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.signup);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
