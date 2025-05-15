import 'package:flutter/material.dart';
import 'package:home_staff_360/theme/theme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String? _selectedRole;
  bool _isFormValid = false;

  @override
  void initState() {
    super.initState();
    // Add listeners to all text controllers
    _nameController.addListener(_validateForm);
    _contactController.addListener(_validateForm);
    _emailController.addListener(_validateForm);
    _passwordController.addListener(_validateForm);
    _confirmPasswordController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _contactController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validateForm() {
    final isValid = _formKey.currentState?.validate() ?? false;
    final allFieldsFilled =
        _nameController.text.isNotEmpty &&
        _contactController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _confirmPasswordController.text.isNotEmpty &&
        _selectedRole != null;

    setState(() {
      _isFormValid = isValid && allFieldsFilled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [ Form(
          key: _formKey,
          onChanged:
              _validateForm, // This will trigger validation on any form change
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  AppFontFamily.appLogo(context),
                  height: 130,
                  width: 130,
                ),
                SizedBox(height: 20),
                Text("Register", style: AppFontFamily.textTitle(context)),
                SizedBox(height: 16),
                TextFormField(
                  controller: _nameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    helperText: 'Enter Your Full Name',
                  ),
                  style: AppInputDecoration.inputTextStyle(context),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    } else if (value.length < 3) {
                      return 'Name must be at least 3 characters long';
                    } else if (!RegExp(r'[A-Za-z]$').hasMatch(value)) {
                      return 'Name must contain only letters';
                    }
                    return null;
                  },
                  maxLength: 20,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _contactController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Contact No',
                    helperText: 'Enter Your Valid Contact No',
                  ),
                  style: AppInputDecoration.inputTextStyle(context),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your contact number';
                    } else if (!RegExp(r'[0-9]$').hasMatch(value)) {
                      return 'Contact No must contain only digits';
                    } else if (value.length < 11) {
                      return 'Contact No must be at least 11 digits long';
                    }
                    return null;
                  },
                  maxLength: 15,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    helperText: 'Enter Your Valid Email Address',
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
                TextFormField(
                  controller: _passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    helperText: 'Enter Your Valid Password',
                  ),
                  style: AppInputDecoration.inputTextStyle(context),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                  maxLength: 20,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _confirmPasswordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    helperText: 'Enter Your Valid Confirm Password',
                  ),
                  style: AppInputDecoration.inputTextStyle(context),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    } else if (value.length < 8) {
                      return 'Confirm Password must be at least 8 characters long';
                    } else if (value != _passwordController.text) {
                      return 'Confirm Passwords do not match';
                    }
                    return null;
                  },
                  maxLength: 20,
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(labelText: 'Role'),
                  style: AppInputDecoration.inputTextStyle(context),
                  value: _selectedRole,
                  items:
                      ['User', 'Vendor']
                          .map(
                            (role) =>
                                DropdownMenuItem(value: role, child: Text(role)),
                          )
                          .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedRole = value;
                      _validateForm();
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a role';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                RichText(text: TextSpan(
                  style: AppFontFamily.textLabel(context),
                  children: [
                    TextSpan(text: 'By signing up, you agree to our '),
                    TextSpan(text: 'Terms & Condition, ', style: AppFontFamily.textLink),
                    TextSpan(text: 'Data Policy ', style: AppFontFamily.textLink),
                    TextSpan(text: 'and '),
                    TextSpan(text: 'Cookies Policy.', style: AppFontFamily.textLink),
                  ]
                )),
                SizedBox(height: 20),
                FlatButton(
                  text: 'Register',
                  disabled: !_isFormValid,
                  onPressed:
                      _isFormValid
                          ? () {
                            if (_formKey.currentState!.validate()) {
                              // Handle signup logic here
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Signup successful')),
                              );
                              // Navigate to login screen
                            }
                          }
                          : null, // Disable button when form is invalid
                ),
                SizedBox(height: 16),
                OutlineButton(text: 'Cancel'),
              ],
            ),
          ),
        )]
      ),
    );
  }
}
