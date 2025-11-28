import 'package:flutter/material.dart';
import '../components/layout.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final field = OutlineInputBorder(borderRadius: BorderRadius.circular(10));

    return AuthLayout(
      buttonText: "Send OTP",
      onButtonPressed: () {
        Navigator.pushNamed(context, '/otp');
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
          SizedBox(
            height: 150,
            child: Center(
              child: Image.asset(
                'assets/icon/email.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text("Enter your email"),
          const SizedBox(height: 6),
          TextField(decoration: InputDecoration(border: field)),
        ],
      ),
    );
  }
}
