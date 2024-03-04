import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:swiggy/screens/otp.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _mobileController = TextEditingController();
  void _otpv() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return const OtpVerification();
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _mobileController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Enter your mobile number to get otp',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              IntlPhoneField(
                controller: _mobileController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(),
                ),
                focusNode: FocusNode(),
                initialCountryCode: 'IN',
                validator: (value) {
                  if (value == null) {
                    return 'Enter something valid';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: _otpv,
                child: const Text('Get otp'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                    'By clicking i accept the terms of services and privacy policy'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
