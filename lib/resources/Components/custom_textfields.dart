import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField13 extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final AutovalidateMode? autoValidateMode;
  final int? maxLines;
  final int? minLines;
  final FocusNode? focusNode;
  final Color textColor;
  final bool? showCursor;
  final bool readOnly;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Color fillColor;
  final List<TextInputFormatter> inputFormatter;
  static const Color fillColorDefaultValue = Color(0xffF0F0F0);
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  const CustomTextField13(
      {super.key,
      this.onTap,
      this.validator,
      this.obscureText = false,
      this.autoValidateMode,
      this.title,
      this.controller,
      this.keyboardType,
      this.maxLines = 1,
      this.minLines,
      this.showCursor,
      this.readOnly = false,
      this.hintText,
      this.fillColor = fillColorDefaultValue,
      this.prefixIcon,
      this.sufixIcon,
      this.textColor = Colors.black54,
      this.onChanged,
      this.focusNode,
      this.inputFormatter = const <TextInputFormatter>[]});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title == null)
            ? Container()
            : Container(
                margin: const EdgeInsets.only(bottom: 3, left: 2, right: 2),
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff101817),
                  ),
                ),
              ),
        TextFormField(
          focusNode: focusNode,
          onChanged: onChanged,
          showCursor: showCursor,
          readOnly: readOnly,
          minLines: minLines,
          maxLines: maxLines,
          onTap: onTap,
          autovalidateMode: autoValidateMode,
          obscureText: obscureText,
          validator: validator,
          inputFormatters: inputFormatter,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Color(0xff999999),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            isDense: true,
            fillColor: fillColor,
            filled: true,
            suffixIcon: sufixIcon,
            contentPadding: const EdgeInsets.fromLTRB(13, 17, 0, 17),
          ),
          controller: controller,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}

