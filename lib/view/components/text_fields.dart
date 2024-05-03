import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String errorText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.errorText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white), // Text color
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        errorText: errorText.isNotEmpty ? errorText : null,
        labelStyle: TextStyle(color: Colors.white), // Label color
        hintStyle: TextStyle(color: Colors.white), // Hint text color
        filled: true,
        fillColor: Colors.transparent, // Transparent background fill
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Border color
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Border color on focus
        ),
      ),
    );
  }
}


class CustomPasswordField extends StatefulWidget {
  final String hintText;
  final String labelText;
  final String errorText;
  final TextEditingController controller;

  const CustomPasswordField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.errorText = '',
  }) : super(key: key);

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isObscured, // Password hiding
      style: TextStyle(color: Colors.white), // Text color
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        errorText: widget.errorText.isNotEmpty ? widget.errorText : null,
        labelStyle: TextStyle(color: Colors.white), // Label color
        hintStyle: TextStyle(color: Colors.white), // Hint text color
        filled: true,
        fillColor: Colors.transparent, // Transparent background fill
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Border color
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Border color on focus
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ),
      ),
    );
  }
}
