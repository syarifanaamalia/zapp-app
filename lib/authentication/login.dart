import 'package:flutter/material.dart';
import '../components/layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;

  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

  final OutlineInputBorder field = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
  );

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      buttonText: "Create new account",
      onButtonPressed: () {
        Navigator.pushNamed(context, '/email');
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
          const SizedBox(height: 24),

          // Username
          const Text("Username"),
          const SizedBox(height: 6),
          TextField(
            controller: usernameCtrl,
            decoration: InputDecoration(
              border: field,
              enabledBorder: field,
              focusedBorder: field.copyWith(
                borderSide:
                const BorderSide(color: Color(0xFF2E64A5), width: 2),
              ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            ),
          ),

          const SizedBox(height: 16),

          // Password
          const Text("Password"),
          const SizedBox(height: 6),
          TextField(
            controller: passwordCtrl,
            obscureText: !passwordVisible,
            decoration: InputDecoration(
              border: field,
              enabledBorder: field,
              focusedBorder: field.copyWith(
                borderSide:
                const BorderSide(color: Color(0xFF2E64A5), width: 2),
              ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              suffixIcon: IconButton(
                icon: Icon(passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
            ),
          ),

          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2E64A5),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Log In"),
            ),
          ),

          const SizedBox(height: 8),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgot');
              },
              child: const Text("Forgot Password?"),
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
