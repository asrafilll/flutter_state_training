import 'package:flutter/material.dart';

class QTextField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final bool obscure;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final int maxLines;

  const QTextField({
    Key? key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    required this.onChanged,
    this.obscure = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      maxLength: 20,
      maxLines: widget.maxLines,
      obscureText: widget.obscure,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        suffixIcon: const Icon(
          Icons.text_format,
        ),
        helperText: widget.hint,
      ),
      onChanged: widget.onChanged,
    );
  }
}
