import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../components/layout.dart';

class OTPPage extends StatelessWidget {
  OTPPage({super.key});

  final TextEditingController otpCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      buttonText: "Continue",
      onButtonPressed: () {
        Navigator.pushNamed(context, '/register');
      },
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Login or Register",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 50),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icon/OTP.png',
                height: 70,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 16),

              const Text(
                "OTP Code Sent",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),

              const SizedBox(height: 6),

              const Text(
                "Enter the OTP code we sent to your registered email\n(zapp@gmail.com)",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.start,
              ),
            ],
          ),

          const SizedBox(height: 32),

          PinCodeTextField(
            appContext: context,
            length: 6,
            controller: otpCtrl,
            keyboardType: TextInputType.number,
            animationType: AnimationType.fade,

            cursorColor: Colors.black,
            enableActiveFill: true,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(8),
              fieldHeight: 48,
              fieldWidth: 40,

              activeFillColor: Colors.white,
              inactiveFillColor: Colors.white,
              selectedFillColor: Colors.white,

              activeColor: Colors.black54,
              inactiveColor: Colors.black26,
              selectedColor: const Color(0xFF2E64A5),
            ),

            onChanged: (value) {},
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
