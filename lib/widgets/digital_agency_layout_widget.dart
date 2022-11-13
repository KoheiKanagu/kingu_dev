import 'package:flutter/widgets.dart';

class DigitalAgencyLayoutWidget extends StatelessWidget {
  const DigitalAgencyLayoutWidget({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double padding;
        if (constraints.maxWidth <= 520) {
          padding = 16;
        } else if (constraints.maxWidth <= 960) {
          padding = 40;
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
      },
    );
  }
}
