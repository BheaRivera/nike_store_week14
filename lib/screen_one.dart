
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const Color pink = Color(0xFFE41491);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              const SizedBox(height: 95),
              const Text(
                'NIKE STORE',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Women's Activewear & Lifestyle",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              const SizedBox(height: 65),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Log In',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Sign Up', style: TextStyle(color: Colors.black54)),
                ],
              ),
              const SizedBox(height: 35),
              _field('Enter your email'),
              const SizedBox(height: 20),
              _field('Enter your password', password: true),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password?',
                    style: TextStyle(color: Colors.black87)),
              ),
              const SizedBox(height: 32),
              _button('Log In'),
              const SizedBox(height: 18),
              const Text('or continue with',
                  style: TextStyle(color: Colors.black54)),
              const SizedBox(height: 18),
              _button('G   Google'),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 35,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE41491), Color(0xFFF5A5D4)],
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(70)),
        ),
      ),
    );
  }

  Widget _field(String hint, {bool password = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFEEEEEE))),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(hint,
                style: const TextStyle(color: Colors.black54)),
          ),
          if (password)
            const Icon(Icons.visibility_off, color: pink),
        ],
      ),
    );
  }

  Widget _button(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 17),
      decoration: BoxDecoration(
        color: pink,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
