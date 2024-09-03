import 'package:flutter/material.dart';

extension StringExtensions on String? {
  bool get doesNotHaveValue => this == null || this!.isEmpty;
}

class CaptionText extends StatelessWidget {
  final Color? textColor;

  const CaptionText(
      {super.key,
      required this.title,
      this.isRequired = true,
      this.textColor = Colors.black});

  final String title;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    if (title.doesNotHaveValue) return const SizedBox.shrink();

    return RichText(
      text: TextSpan(
        style: TextStyle(
            color: textColor,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: .5),
        children: [
          TextSpan(text: title),
          if (isRequired) ...[
            const TextSpan(
                text: ' *', style: TextStyle(color: Colors.red)),
          ],
        ],
      ),
    );
  }
}
