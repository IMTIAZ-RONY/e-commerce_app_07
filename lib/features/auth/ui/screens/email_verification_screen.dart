import 'package:e_commerce_app_07/app/app_colors.dart';
import 'package:e_commerce_app_07/app/app_theme_data.dart';
import 'package:e_commerce_app_07/app/assets_path.dart';
import 'package:e_commerce_app_07/features/auth/ui/widgets/app_log_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:email_validator/email_validator.dart';

import 'otp_verification_screen.dart';
class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = '/email-verification';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
         child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  AppLogoWidget(),
                  SizedBox(
                    height: 32,
                  ),
                  Text("Welcome Back",
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Please Enter Your Email Address",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    autovalidateMode:AutovalidateMode.onUserInteraction ,
                    controller:_emailTEController ,
                    keyboardAppearance: Brightness.light,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                    ),
                    validator: (String? value){
                      if(value?.trim().isEmpty??true){
                        return "Enter your email address";
                      }
                      if(EmailValidator.validate(value!)==false){
                        return "Enter a valid email address";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                     // if(_formKey.currentState!.validate()){}
                      Navigator.pushNamed(context, OtpVerificationScreen.name);
                     // Navigator.push(context, MaterialPageRoute(builder:(context)=>OtpVerificationScreen()));
                    },
                    child: Text(
                      "Next",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
