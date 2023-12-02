// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';
import 'package:kingu_dev/common_widgets/my_simple_text.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/constants/my_profile.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileBody extends HookConsumerWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final children = <Widget>[
      SelectableText(
        '金具浩平',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      MySimpleText(
        leadingEmoji: '🐱',
        text: 'Kohei Kanagu',
        onTap: () {
          ref.read(firebaseAnalyticsProvider).logEvent(
                name: 'nyan',
              );
          launchUrlString('https://youtu.be/QH2-TGUlwu4');
        },
        isLink: false,
        newWindow: false,
      ),
      MySimpleText(
        leadingEmoji: '🏠',
        text: '経歴など',
        onTap: () {
          ref.read(firebaseAnalyticsProvider).logEvent(
                name: 'details',
              );
          launchUrlString(MyProfile.details);
        },
      ),
      MySimpleText(
        leadingEmoji: '📧',
        text: MyProfile.email,
        onTap: () {
          ref.read(firebaseAnalyticsProvider).logEvent(
                name: 'email',
              );
          launchUrlString('mailto:${MyProfile.email}');
        },
      ),
      MySimpleText(
        leadingEmoji: '💼',
        text: 'お仕事について',
        onTap: () {
          ref.read(firebaseAnalyticsProvider).logEvent(
                name: 'work',
              );
          launchUrlString(MyProfile.workUrl);
        },
      ),
      MySimpleText(
        leadingEmoji: '🛠️',
        text: 'このサイト',
        onTap: () {
          ref.read(firebaseAnalyticsProvider).logEvent(
                name: 'source',
              );
          launchUrlString(MyProfile.sourceUrl);
        },
      ),
    ]
        .intersperse(
          const Gap(8),
        )
        .toList();

    return ListView.builder(
      itemCount: children.length,
      itemBuilder: (context, index) {
        return Animate(
          effects: [
            SlideEffect(
              delay: Duration(milliseconds: 10 * index),
              begin: const Offset(0.01, 0),
              end: Offset.zero,
            ),
            FadeEffect(
              delay: Duration(milliseconds: 10 * index),
            ),
          ],
          child: children[index],
        );
      },
    );
  }
}
