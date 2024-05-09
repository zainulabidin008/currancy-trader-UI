import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final int borderRadius = 18;

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
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(18.px),
        labelText: labelText,
        alignLabelWithHint: true,
        errorText: errorText.isNotEmpty ? errorText : null,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.primaryBlueColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.primaryRedColor),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
    );
  }
}

class CustomNumberField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String errorText;
  final TextEditingController controller;

  const CustomNumberField({
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
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(18.px),
        labelText: labelText,
        alignLabelWithHint: true,
        errorText: errorText.isNotEmpty ? errorText : null,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.primaryBlueColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.primaryRedColor),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
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
      obscureText: _isObscured,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(18.px),
        labelText: widget.labelText,
        errorText: widget.errorText.isNotEmpty ? widget.errorText : null,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.primaryBlueColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.px),
          borderSide: const BorderSide(color: AppColors.primaryRedColor),
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

class OTPTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  const OTPTextField({
    Key? key,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: true,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: AppColors.white),
        maxLength: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          counterText: "",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          filled: false,
          fillColor: Colors.transparent,
        ),
        onChanged: (value) {
          if (value.length != 0) {
            _nextField(context);
          }
        },
      ),
    );
  }

  void _nextField(BuildContext context) {
    FocusScope.of(context).nextFocus();
  }
}
