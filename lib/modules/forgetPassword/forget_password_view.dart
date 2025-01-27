import 'package:evently/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

import '../../core/theme/colors_palette.dart';
import '../../core/widgets/custom_text_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Forget Password"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                height: 400,
                child: Image.asset(AppAssets.forgetImg)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomFormField(
                hintText: "Email",
                prefixIcon: Icons.mail,
                color: ColorsPalette.generalGrayColor,
              ), 
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  child:Text("Reset Password",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.white,

                    ),
                  )
              ),
            ),
          ],
        )
    );
  }
}