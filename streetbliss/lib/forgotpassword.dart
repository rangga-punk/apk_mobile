import 'package:flutter/material.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    void resetPassword() {
      final email = emailController.text.trim();
      if (email.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Email field cannot be empty."),
            backgroundColor: Colors.red,
          ),
        );
      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Please enter a valid email address."),
            backgroundColor: Colors.orange,
          ),
        );
      } else {
        // Add actual reset password logic here
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Reset link sent to $email."),
            backgroundColor: Colors.green,
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Forgot your password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff1f2a36),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter your registered email below to receive a password reset link.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xff1f2a36)),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email Address",
                prefixIcon: const Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: resetPassword,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff1f2a36),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  "Send Reset Link",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
