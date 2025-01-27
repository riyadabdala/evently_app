import 'package:evently/core/constants/app_assets.dart';
import 'package:evently/core/routes/pages_route_name.dart';
import 'package:evently/core/theme/colors_palette.dart';
import 'package:evently/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});


  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
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
           color: ColorsPalette.generalGrayColor,
         ),
            SizedBox(height: 0.1,),
         CustomFormField(
           isPassword: true,
           maxLines:1,
           hintText: "Password",
           prefixIcon: Icons.lock,
           suffixIcon: Icons.remove_red_eye,
           color: ColorsPalette.generalGrayColor,
           ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed:(){
                  Navigator.pushNamed(context,PagesRouteName.forgetPassword);
                },
                child: Text("Forget Password?",
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: ColorsPalette.primaryColor,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorsPalette.primaryColor,
                    decorationThickness: 2,
                  ),
                ), ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: ColorsPalette.primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )
                ),
                child:Text("Login",
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
                  text: "Don’t Have Account? ",
                  style: theme.textTheme.titleMedium,
                ),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, PagesRouteName.signUp);
                    },
                    child: Text(
                      "Create Account",
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
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: ColorsPalette.primaryColor,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
                Text(
                  "OR",
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: ColorsPalette.primaryColor,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: ColorsPalette.primaryColor,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ColorsPalette.white,
                    padding: EdgeInsets.symmetric(vertical:20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color: ColorsPalette.primaryColor,
                      )
                    )
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.googleIcn,height: 25,),
                    SizedBox(width: 10,),
                    Text("Login With Google",
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorsPalette.primaryColor,
                      ),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
