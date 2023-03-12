import 'package:flutter/material.dart';
import 'package:kingu_dev/constants/digital_agency_colors.dart';
import 'package:kingu_dev/extensions/media_query_data_extension.dart';

class DigitalAgencyNavigateButton extends StatelessWidget {
  const DigitalAgencyNavigateButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    final int contentFlex;
    final int spacerFlex;

    if (data.isSmallScreen) {
      contentFlex = 1;
      spacerFlex = 0;
    } else {
      contentFlex = 2;
      spacerFlex = 2;
    }

    return Row(
      children: [
        Expanded(
          flex: contentFlex,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: DigitalAgencyColors.sea.shade600,
              padding: const EdgeInsets.all(16),
              minimumSize: const Size.fromHeight(56),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: DigitalAgencyColors.white,
                        ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
        if (spacerFlex > 0)
          Spacer(
            flex: spacerFlex,
          ),
      ],
    );
  }
}
