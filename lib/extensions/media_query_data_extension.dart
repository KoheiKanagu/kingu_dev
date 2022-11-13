import 'package:flutter/widgets.dart';
import 'package:kingu_dev/theme/digital_agency_layout.dart';

extension MediaQueryDataExtension on MediaQueryData {
  bool get isLarseScreen {
    return size.width > DigitalAgencyLayout.breakPointMedium;
  }

  bool get isMediumScreen {
    return size.width > DigitalAgencyLayout.breakPointSmall;
  }

  bool get isSmallScreen {
    return size.width <= DigitalAgencyLayout.breakPointSmall;
  }
}
