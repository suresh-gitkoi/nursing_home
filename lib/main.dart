import 'package:flutter/material.dart';

import 'package:nursing_home/homescreen.dart';

void main() {
  runApp(Nursinghome());
}

class Nursinghome extends StatelessWidget {
  const Nursinghome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String _testEmail = 'test@test.com';
  final String _testPassword = 'qwerty';

  bool _isLoginButtonDisabled = true;

  void _handleLogin() {
    // Check if email and password match our test credentials
    if (_emailController.text == _testEmail &&
        _passwordController.text == _testPassword) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Homescreen()));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }

  void _handleEmailChanged(String value) {
    if (value.isEmpty) {
      setState(() {
        _isLoginButtonDisabled = true;
      });
    } else {
      setState(() {
        _isLoginButtonDisabled = false;
      });
    }
  }

  void _handlePasswordChanged(String value) {
    if (value.isEmpty) {
      setState(() {
        _isLoginButtonDisabled = true;
      });
    } else {
      setState(() {
        _isLoginButtonDisabled = false;
      });
    }
  }

  Widget _buildEmailTextField() {
    return TextField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email',
      ),
      onChanged: _handleEmailChanged,
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      controller: _passwordController,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
      ),
      onChanged: _handlePasswordChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildEmailTextField(),
            const SizedBox(height: 16.0),
            _buildPasswordTextField(),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Color(0xFF0069FE),
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                onPressed: _isLoginButtonDisabled ? null : _handleLogin,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
