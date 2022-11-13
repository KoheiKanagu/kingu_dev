import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/router/home_router.dart';
import 'package:kingu_dev/widgets/digital_agency_layout_widget.dart';
import 'package:kingu_dev/widgets/digital_agency_navigate_button.dart';

class ErrorPage extends HookConsumerWidget {
  const ErrorPage({
    super.key,
  });

  static const path = '/error';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: DigitalAgencyLayoutWidget(
        children: [
          const Gap(64),
          Text(
            'エラー',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(24),
          DigitalAgencyNavigateButton(
            text: 'ホーム',
            onPressed: () {
              const HomePageRoute().go(context);
            },
          ),
        ],
      ),
    );
  }
}
