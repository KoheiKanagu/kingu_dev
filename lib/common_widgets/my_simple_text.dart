import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kingu_dev/constants/digital_agency_colors.dart';

class MySimpleTest extends StatelessWidget {
  const MySimpleTest({
    super.key,
    this.isLink = true,
    this.leadingEmoji,
    this.leading,
    this.headline = '',
    required this.text,
    required this.onTap,
    this.newWindow = true,
  });

  final bool isLink;

  final String? leadingEmoji;

  final Widget? leading;

  final String text;

  final String headline;

  final VoidCallback onTap;

  final bool newWindow;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        leading ?? Text(leadingEmoji ?? ''),
        const SizedBox(
          width: 8,
        ),
        Text(headline),
        const SizedBox(
          width: 8,
        ),
        Text.rich(
          TextSpan(
            text: text,
            recognizer: TapGestureRecognizer()..onTap = onTap,
            style: isLink
                ? Theme.of(context).textTheme.bodyMedium?.apply(
                      color: DigitalAgencyColors.sea.shade600,
                      decoration: TextDecoration.underline,
                    )
                : Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        if (newWindow)
          const Icon(
            Icons.open_in_new,
            size: 16,
          ),
      ],
    );
  }
}
