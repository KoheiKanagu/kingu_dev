import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';
import 'package:kingu_dev/common_widgets/my_simple_text.dart';
import 'package:kingu_dev/features/mol_trip/application/mol_trip_providers.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MolTripBody extends HookConsumerWidget {
  const MolTripBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'モル旅',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Gap(8),
        ref.watch(molTripsProvider).maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              data: (data) => Column(
                children: data
                    .map<Widget>(
                      (e) => MySimpleText(
                        leadingEmoji: '🐹',
                        text: e.title,
                        onTap: () {
                          launchUrlString(e.timeline);
                        },
                      ),
                    )
                    .intersperse(const Gap(8))
                    .toList(),
              ),
            ),
      ],
    );
  }
}
