import 'package:flutter/material.dart';

import '../../../../Utlis/app_colors.dart';

class CustomDivider extends StatelessWidget {
  CustomDivider({super.key, this.thickness, this.indent, this.endIndent});

  double? thickness;
  double? indent;
  double? endIndent;

  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      color: AppColors.primaryColor,
      thickness: thickness ?? 3,
      indent: indent,
      endIndent: endIndent,
    );
    return divider;
  }
}
