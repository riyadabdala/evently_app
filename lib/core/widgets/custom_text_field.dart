
import 'package:evently/core/theme/colors_palette.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final Color?color;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool isPassword;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool enabled;
  final EdgeInsetsGeometry? padding;
  final void Function(String)? onChanged;
  final dynamic maxLines; // خاصية onChanged
  const CustomFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.isPassword = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.enabledBorder,
    this.focusedBorder,
    this.enabled = true,
    this.padding,
    this.onChanged, 
    this. maxLines,
    this.color,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword ? _isObscured : false,
        validator: widget.validator,
        enabled: widget.enabled,

        onChanged: (value) {
          print('Entered text: $value'); // طباعة النص في الـ Console
          if (widget.onChanged != null) {
            widget.onChanged!(value); // استدعاء الدالة إذا تم توفيرها
          }
        },
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon!= null ? Icon(widget.prefixIcon) : null,
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
            icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          )
              : null,
          enabledBorder: widget.enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: ColorsPalette.appColorIconAndTextFormFiled, width: 2),
              ),
          focusedBorder: widget.focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: ColorsPalette.appColorIconAndTextFormFiled),
              ),
        ),
      ),
    );
  }
}