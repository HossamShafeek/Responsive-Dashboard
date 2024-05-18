import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_Colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    this.suffixIcon,
    required this.hintText,
    this.maxLength,
    this.textInputType,
    this.obscureText = false,
    this.prefixIcon,
    this.maxLines,
    this.readOnly = false,
  });
  final String title;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String hintText;
  final int? maxLength;
  final TextInputType? textInputType;
  final bool obscureText;
  final int? maxLines;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12,),
        TextFormField(
          readOnly: readOnly,
          onTapOutside: (value) {
            FocusScope.of(context).unfocus();
          },
          maxLines: maxLines ?? 1,
          keyboardType: textInputType,
          maxLength: maxLength,
          obscureText: obscureText,
          cursorColor: AppColors.indigo,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            filled: true,
            isDense: true,
            hintStyle: AppStyles.styleRegular16(context).copyWith(
              color: AppColors.grey,
            ),
            fillColor: AppColors.grey50,
            border: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ],
    );
  }
  OutlineInputBorder buildBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
  }
}
