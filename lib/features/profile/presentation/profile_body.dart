import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';
import 'package:kingu_dev/common_widgets/my_simple_text.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/constants/my_profile.dart';
import 'package:kingu_dev/constants/my_theme.dart';
import 'package:kingu_dev/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileBody extends HookConsumerWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final children = [
      SelectableText(
        '金具浩平',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      const Gap(24),
      ...[
        MySimpleTest(
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
        MySimpleTest(
          leadingEmoji: '📧',
          text: MyProfile.email,
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'email',
                );
            launchUrlString('mailto:${MyProfile.email}');
          },
        ),
        MySimpleTest(
          leadingEmoji: '💼',
          text: 'お仕事について',
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'work',
                );
            launchUrlString(MyProfile.workUrl);
          },
        ),
        MySimpleTest(
          leadingEmoji: '🛠️',
          text: 'このサイト',
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'source',
                );
            launchUrlString(MyProfile.sourceUrl);
          },
        ),
        const Gap(48),
        MySimpleTest(
          leading: Assets.icons.github.image(
            height: 32,
          ),
          text: MyProfile.githubUrl,
          headline: 'GitHub',
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'github',
                );
            launchUrlString(MyProfile.githubUrl);
          },
        ),
        MySimpleTest(
          leading: Assets.icons.twitter.image(
            height: 32,
          ),
          text: MyProfile.twitterUrl,
          headline: 'Twitter',
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'twitter',
                );
            launchUrlString(MyProfile.twitterUrl);
          },
        ),
        MySimpleTest(
          leading: Assets.icons.facebook.image(
            height: 32,
          ),
          text: MyProfile.facebookUrl,
          headline: 'Facebook',
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'facebook',
                );
            launchUrlString(MyProfile.facebookUrl);
          },
        ),
        MySimpleTest(
          leading: Assets.icons.steam.image(
            height: 32,
          ),
          text: MyProfile.steamUrl,
          headline: 'Steam',
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'steam',
                );
            launchUrlString(MyProfile.steamUrl);
          },
        ),
        MySimpleTest(
          leading: Assets.icons.zenn.image(
            height: 32,
          ),
          text: MyProfile.zennUrl,
          headline: 'Zenn',
          onTap: () {
            ref.read(firebaseAnalyticsProvider).logEvent(
                  name: 'zenn',
                );
            launchUrlString(MyProfile.zennUrl);
          },
        ),
        // const Gap(48),
        // HomePageImageButton(
        //   onTap: () {
        //     ref.read(firebaseAnalyticsProvider).logEvent(
        //           name: 'appStore',
        //         );
        //     launchUrlString(MyProfile.appStoreUrl);
        //   },
        //   image: Assets.icons.appStore.image(height: 40),
        // ),
        // HomePageImageButton(
        //   onTap: () {
        //     ref.read(firebaseAnalyticsProvider).logEvent(
        //           name: 'googlePlay',
        //         );
        //     launchUrlString(MyProfile.googlePlayUrl);
        //   },
        //   image: Assets.icons.googlePlay.image(height: 40),
        // ),
      ].intersperse(
        const Gap(8),
      ),
      const Gap(64),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              ref.read(firebaseAnalyticsProvider).logEvent(
                    name: 'steamReplay2022',
                  );
              launchUrlString(MyProfile.steamReplay2022Url);
            },
            child: Assets.images.steamReplay2022.image(
              width: 512,
            ),
          ),
        ],
      )
    ];

    return ListView.builder(
      padding: MyTheme.adaptiveBodyWidgetPadding(context),
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
