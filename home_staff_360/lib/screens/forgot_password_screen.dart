import 'package:flutter/material.dart';
import 'package:home_staff_360/screens/email_sent_screen.dart';
import 'package:home_staff_360/theme/theme.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  bool _isFormValid = false;
  bool _isLoading = false;
  bool get _isFormDisabled => _isLoading || !_isFormValid;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_formKey.currentState == null) {
        debugPrint('Warning: Form key not attached to any Form widget');
      }
    });

    _emailController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  bool _validateForm() {
    final isValid = _formKey.currentState?.validate() ?? false;
    final allFieldsFilled = _emailController.text.isNotEmpty;

    setState(() {
      _isFormValid = isValid && allFieldsFilled;
    });

    return _isFormValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [_buildForgotForm()]));
  }

  Widget _buildForgotForm() {
    return Form(
      key: _formKey,
      onChanged:
          _validateForm, // This will trigger validation on any form change
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppTheme.appLogo(context), height: 100, width: 100),
            SizedBox(height: 40),
            Text("Forget Password", style: AppTheme.textTitle(context)),
            SizedBox(height: 20),
            Text(
              "Please fill email and we'll send you a link to get back into your account.",
              style: AppTheme.textLabel(context),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: 'Email Address *',
                hintText: 'e.g. david@example.com',
                counter: const SizedBox.shrink(),
              ),
              style: AppInputDecoration.inputTextStyle(context),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email address';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
              maxLength: 40,
            ),
            SizedBox(height: 16),
            FlatButton(
              text: 'Submit',
              disabled: !_isFormValid || _isLoading,
              onPressed:
                  (_isFormValid && !_isLoading)
                      ? () async {
                        if (!_validateForm()) return; // Use validation method
                        await _submitForm();
                      }
                      : null,
              loading: _isLoading,
            ),
            SizedBox(height: 16),
            OutlineButton(
              text: 'Cancel',
              disabled: _isLoading,
              onPressed:
                  _isLoading
                      ? null
                      : () {
                        Navigator.pop(context);
                      },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submitForm() async {
    if (_emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required fields')),
      );
      return;
    }
    setState(() => _isLoading = true);

    try {
      // Combine all form data
      final formData = {'email': _emailController.text.trim()};

      // Call your API here
      await Future.delayed(const Duration(seconds: 1)); // Simulate API call

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Forgot Password!')));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:
                (_) => EmailSentScreen(email: _emailController.text.trim()),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: ${e.toString()}')));
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }
}
