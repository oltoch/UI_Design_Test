import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType? textInputType;
  final bool? obscureText;

  TextFieldWidget({
    required this.controller,
    required this.label,
    this.textInputType,
    this.obscureText,
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _obscure = false;
  bool _isObscure() {
    return widget.obscureText == null || widget.obscureText == false
        ? false
        : true;
  }

  InputDecoration inputDecorationWithSuffixIcon() {
    return InputDecoration(
      suffixIcon: IconButton(
        icon: Icon(!_obscure
            ? Icons.visibility_outlined
            : Icons.visibility_off_outlined),
        onPressed: () {
          setState(() {
            _obscure = !_obscure;
          });
        },
      ),
      filled: true,
      fillColor: Color(0xfff0f0f0),
      labelText: widget.label,
      labelStyle: TextStyle(
          color: Color(0xffaeaeb2), fontSize: 20, fontWeight: FontWeight.w500),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        borderSide: BorderSide.none,
      ),
    );
  }

  InputDecoration inputDecorationWithoutSuffixIcon() {
    return InputDecoration(
      filled: true,
      fillColor: Color(0xfff0f0f0),
      labelText: widget.label,
      labelStyle: TextStyle(
          color: Color(0xffaeaeb2), fontSize: 20, fontWeight: FontWeight.w500),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: false,
      style: TextStyle(color: Color(0xff2b2b2b), fontSize: 26),
      controller: widget.controller,
      obscureText: widget.obscureText == null || false ? false : _obscure,
      keyboardType: widget.textInputType,
      decoration: _isObscure()
          ? inputDecorationWithSuffixIcon()
          : inputDecorationWithoutSuffixIcon(),
    );
  }

  @override
  void initState() {
    _obscure = _isObscure();
    super.initState();
  }
}
