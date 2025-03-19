import 'dart:async';

import 'package:e_commerce_app_07/app/app_colors.dart';
import 'package:e_commerce_app_07/app/app_theme_data.dart';
import 'package:e_commerce_app_07/app/assets_path.dart';
import 'package:e_commerce_app_07/features/auth/ui/widgets/app_log_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../app/app_constant.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  static const String name = '/otp-verification';

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otpTEController = TextEditingController();
  late final RxInt _remainingTime= AppConstants.resendOtpTimeTimeOutInSecs.obs;
  final RxBool _enableResendCodeButton=false.obs;
late Timer timer;
@override
void initState(){
  super.initState();
  _startResendCodeTimer();
}
void _startResendCodeTimer(){
  _remainingTime.value= AppConstants.resendOtpTimeTimeOutInSecs;
  _enableResendCodeButton.value=false;
 timer=Timer.periodic(const Duration(seconds:1),(t){
   _remainingTime.value--;
   setState(() {
   });
   if(_remainingTime.value==0){
     t.cancel();
     _enableResendCodeButton.value=true;
   }
 }

 );
}


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
                    height: 24,
                  ),
                  AppLogoWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  Text("Enter OTP Code",
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "A 4 Digit OTP Code has been sent to your email.",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    animationDuration: Duration(milliseconds: 300),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      activeColor: AppColors.themeColor,
                      selectedColor: Color(0xFF07AEAF),
                      inactiveColor: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    keyboardType: TextInputType.number,
                    appContext: context,
                    controller: _otpTEController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // if(_formKey.currentState!.validate()){}
                    },
                    child: Text(
                      "Next",
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  //TODO:enable button when 120s is done and invisible the text
                  //stram,timer(setState),get-x(obs)
                   Obx(()=>Visibility(
                     visible: !_enableResendCodeButton.value,
                     child: RichText(
                         text:
                         TextSpan(text: "This code will expire in ",
                             style:TextStyle(color:Colors.grey ) ,
                             children: [
                               TextSpan(
                                 text: '${_remainingTime.value}s',
                                 style: TextStyle(
                                   fontSize: 18,
                                   fontWeight:FontWeight.w700 ,
                                   color: AppColors.themeColor,
                                 ),
                               )
                             ])),
                   ),),

                  SizedBox(height: 3,),
                  Obx(()=>
                    Visibility(
                      visible: _enableResendCodeButton.value,
                      child: TextButton(onPressed: (){
                        _startResendCodeTimer();
                      }, child:const Text("Resend Code")),
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
  @override
  void dispose(){
  timer.cancel();
  super.dispose();
  }
}
