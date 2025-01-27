import 'package:evently/core/constants/app_assets.dart';
import 'package:evently/core/theme/colors_palette.dart';
import 'package:evently/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});


  @override
  Widget build(BuildContext context) {
    var mediaQuery =MediaQuery.of(context);
    return  Scaffold(
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.eventlyLogo,height: mediaQuery.size.height * 0.25,),
         CustomFormField(
           hintText: "Email",
            prefixIcon: Icons.mail,
         ),

         CustomFormField(
           hintText: "Password",
           prefixIcon: Icons.lock,
           suffixIcon: Icons.remove_red_eye,
           ),

        ],
      ),
    );
  }
}
