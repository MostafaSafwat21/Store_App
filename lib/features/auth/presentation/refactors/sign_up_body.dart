import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/animate/animate_do.dart';
import 'package:store/core/common/widget/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/routes/app_routes.dart';
import 'package:store/core/style/fonts/font_weight_helper.dart';
import 'package:store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:store/features/auth/presentation/widgets/dark_and_lang_button.dart';
import 'package:store/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:store/features/auth/presentation/widgets/sign_up/sign_up_text_form.dart';
import 'package:store/features/auth/presentation/widgets/sign_up/user_avater_image.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Dark mode and language
            const DarkAndLangButtons(),

            SizedBox(height: 12.h),
            // Welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),

            SizedBox(height: 10.h),
            // User Avater Image
            const UserAvaterImage(),

            SizedBox(height: 10.h),
            // SignUp TextForm
            const SignUpTextForm(),

            SizedBox(height: 10.h),
            // SignUp Button
            const SignUpButton(),

            SizedBox(height: 10.h),
            // Go To Login Screen
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
