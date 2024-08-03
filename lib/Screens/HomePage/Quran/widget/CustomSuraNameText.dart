import 'package:first_git_app/Screens/HomePage/Quran/widget/CustomDivider.dart';
import 'package:flutter/material.dart';

class CustomSuraNameText extends StatelessWidget {
  const CustomSuraNameText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 24),
      ),
    );
  }
}
