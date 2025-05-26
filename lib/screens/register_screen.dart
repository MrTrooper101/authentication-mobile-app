import 'package:auth_mobile_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - kToolbarHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Icon(
                    Icons.person_add_alt_1,
                    size: 64,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Create Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    controller: nameController,
                    labelText: 'Full name',
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    controller: emailController,
                    labelText: 'Email',
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    labelText: 'Password',
                    obscureText: true,
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    controller: confirmPasswordController,
                    labelText: 'Confirm Password',
                    obscureText: true,
                    prefixIcon: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      child: const Text('Register'),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
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
