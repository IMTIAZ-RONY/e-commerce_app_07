import 'package:e_commerce_app_07/features/auth/ui/widgets/app_log_widget.dart';
import 'package:flutter/material.dart';

import 'otp_verification_screen.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  static const String name = '/complete-profile';

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fNameTEController = TextEditingController();
  final TextEditingController _lNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _shippingAddressTEController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                AppLogoWidget(
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 32,
                ),
                Text("Complete Profile",
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Get started with us with your details",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 24,
                ),
                _buildForm(),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    // if(_formKey.currentState!.validate()){}
                    Navigator.pushNamed(context, OtpVerificationScreen.name);
                    // Navigator.push(context, MaterialPageRoute(builder:(context)=>OtpVerificationScreen()));
                  },
                  child: Text(
                    "Complete",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _fNameTEController,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "First Name",
          ),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return "Enter your first name";
            }
            if (value!.length < 3) {
              return "Name must be at least 3 characters";
            }
            return null;
          },
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _lNameTEController,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "Last Name",
          ),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return "Enter your last name";
            }
            if (value!.length < 3) {
              return "Name must be at least 3 characters";
            }
            return null;
          },
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _mobileTEController,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.phone,
          maxLength:11 ,
          decoration: InputDecoration(
            hintText: "Mobile Number",
          ),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return "Enter your mobile number";
            }
            if (RegExp(r'^01[3-9][0-9]{8}$').hasMatch(value!)==false) {
              return "Enter valid mobile number";
            }
            return null;
          },
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _cityTEController,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "City Name",
          ),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return "Enter your city name";
            }
            if (value!.length < 3) {
              return "Name must be at least 3 characters";
            }
            return null;
          },
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          maxLines: 3,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _shippingAddressTEController,
          keyboardAppearance: Brightness.light,
          keyboardType: TextInputType.streetAddress,
          decoration: InputDecoration(
            hintText: "Shipping Address",
          ),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return "Enter your shipping address";
            }
            if (value!.length < 3) {
              return "Name must be at least 3 characters";
            }
            return null;
          },
        ),
      ]),
    );
  }
}
