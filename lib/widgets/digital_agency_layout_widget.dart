import 'package:flutter/widgets.dart';
import 'package:kingu_dev/extensions/media_query_data_extension.dart';

class DigitalAgencyLayoutWidget extends StatelessWidget {
  const DigitalAgencyLayoutWidget({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    final double padding;
    if (data.isSmallScreen) {
      padding = 16;
    } else {
      padding = 40;
    }

    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 760),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
