import 'package:evently/core/utlis/firebase_function.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';
import '../../core/theme/colors_palette.dart';
import '../../core/widgets/custom_text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _emailController=TextEditingController();
  final _nameController=TextEditingController();
  final _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.eventlyLogo, height: mediaQuery.size.height * 0.25,),
          CustomFormField(
            controller: _nameController,
            hintText: "Name",
            prefixIcon: Icons.person,
            color: ColorsPalette.generalGrayColor,
          ),
          CustomFormField(
            controller: _emailController,
            hintText: "Email",
            prefixIcon: Icons.mail,
            color: ColorsPalette.generalGrayColor,
          ),

          SizedBox(height: 0.1,),
          CustomFormField(
            controller: _passwordController,
            isPassword: true,
            maxLines: 1,
            hintText: "Password",
            prefixIcon: Icons.lock,
            suffixIcon: Icons.remove_red_eye,
            color: ColorsPalette.generalGrayColor,
          ),
          CustomFormField(
            isPassword: true,
            maxLines: 1,
            hintText: "Re-Password",
            prefixIcon: Icons.lock,
            suffixIcon: Icons.remove_red_eye,
            color: ColorsPalette.generalGrayColor,
          ),

          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  FirebaseFunctions.createAccount(
                      _emailController.text,
                      _emailController.text);
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ColorsPalette.primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )
                ),
                child: Text("Create Account",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorsPalette.white,
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                  children: [
                    TextSpan(
                      text: "Already Have Account ?",
                      style: theme.textTheme.titleMedium,
                    ),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Login",
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: ColorsPalette.primaryColor,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: ColorsPalette.primaryColor,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),),
          ),

        ],
      ),
    );
  }
}
