import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      required this.backgroundColor,
      required this.imageColor, required this.iconColor});

  final String image;
  final Color backgroundColor,imageColor,iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: backgroundColor,
                  shape: const OvalBorder(),
                ),
                  child: Center(
                    child: SvgPicture.asset(
                      image,
                      colorFilter: ColorFilter.mode(imageColor,BlendMode.srcIn),
                    ),
                  ),),
            ),
          ),
        ),
         Icon(
          Icons.arrow_forward_ios,
          color: iconColor,
        ),
      ],
    );
  }
}
