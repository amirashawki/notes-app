import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/views/Home_view.dart';


class Splachscreen extends StatelessWidget {
  const Splachscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 7000,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
                child: LottieBuilder.asset(
                    'assets/lottie/Animation - 1723244054333.json')),
          ),
          SizedBox(height: 20,),
          Text('Notes App',style: TextStyle(fontSize: 24,color: Colors.blue),)
        ],
      ),
      nextScreen: HomePage(),
      splashIconSize: 5000,
      
    );
  }
}
