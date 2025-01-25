import 'package:evently/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery =MediaQuery.of(context);
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.eventlyLogo,height: mediaQuery.size.height * 0.22 ,),

          ],
        ),
      ),
    );
  }
}
