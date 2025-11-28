import 'package:flutter/material.dart';
import '../components/layout.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;

  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController confirmCtrl = TextEditingController();

  final OutlineInputBorder fieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
  );

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      buttonText: "Create new account",
      onButtonPressed: () {
        Navigator.pushNamed(context, '/login');
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

          // USERNAME
          const Text("Username"),
          const SizedBox(height: 6),
          TextField(
            controller: usernameCtrl,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              enabledBorder: fieldBorder,
              focusedBorder: fieldBorder.copyWith(
                borderSide:
                const BorderSide(color: Color(0xFF2E64A5), width: 2),
              ),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            ),
          ),
          const SizedBox(height: 16),

          // PASSWORD
          const Text("Password"),
          const SizedBox(height: 6),
          TextField(
            controller: passwordCtrl,
            obscureText: !passwordVisible,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              enabledBorder: fieldBorder,
              focusedBorder: fieldBorder.copyWith(
                borderSide:
                const BorderSide(color: Color(0xFF2E64A5), width: 2),
              ),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              suffixIcon: IconButton(
                icon: Icon(passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() => passwordVisible = !passwordVisible);
                },
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            autocorrect: false,
            enableSuggestions: false,
          ),
          const SizedBox(height: 16),

          // CONFIRM PASSWORD
          const Text("Confirm Password"),
          const SizedBox(height: 6),
          TextField(
            controller: confirmCtrl,
            obscureText: !confirmPasswordVisible,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              enabledBorder: fieldBorder,
              focusedBorder: fieldBorder.copyWith(
                borderSide:
                const BorderSide(color: Color(0xFF2E64A5), width: 2),
              ),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              suffixIcon: IconButton(
                icon: Icon(confirmPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() =>
                  confirmPasswordVisible = !confirmPasswordVisible);
                },
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            autocorrect: false,
            enableSuggestions: false,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
