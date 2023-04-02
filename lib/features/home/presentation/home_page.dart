import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';
import 'package:kingu_dev/common_widgets/digital_agency_layout_widget.dart';
import 'package:kingu_dev/common_widgets/digital_agency_navigate_button.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/constants/my_profile.dart';
import 'package:kingu_dev/features/home/presentation/widgets/home_page_image_button.dart';
import 'package:kingu_dev/features/home/presentation/widgets/home_page_simple_text.dart';
import 'package:kingu_dev/gen/assets.gen.dart';
import 'package:kingu_dev/routing/error_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: DigitalAgencyLayoutWidget(
        children: [
          const Gap(64),
          SelectableText(
            '金具浩平',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(24),
          ...[
            HomePageSimpleText(
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
            HomePageSimpleText(
              leadingEmoji: '📧',
              text: MyProfile.email,
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'email',
                    );
                launchUrlString('mailto:${MyProfile.email}');
              },
            ),
            HomePageSimpleText(
              leadingEmoji: '💼',
              text: 'お仕事について',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'work',
                    );
                launchUrlString(MyProfile.workUrl);
              },
            ),
            HomePageSimpleText(
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
            HomePageSimpleText(
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
            HomePageSimpleText(
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
            HomePageSimpleText(
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
            HomePageSimpleText(
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
            HomePageSimpleText(
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
            const Gap(48),
            HomePageImageButton(
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'appStore',
                    );
                launchUrlString(MyProfile.appStoreUrl);
              },
              image: Assets.icons.appStore.image(height: 40),
            ),
            HomePageImageButton(
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'googlePlay',
                    );
                launchUrlString(MyProfile.googlePlayUrl);
              },
              image: Assets.icons.googlePlay.image(height: 40),
            ),
          ].intersperse(
            const Gap(8),
          ),
          const Gap(64),
          HomePageImageButton(
            onTap: () {
              launchUrlString(MyProfile.steamReplay2022Url);
            },
            image: Assets.images.steamReplay2022.image(
              width: 512,
            ),
          ),
          const Divider(),
          const Gap(64),
          SelectableText(
            'その他',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(24),
          DigitalAgencyNavigateButton(
            text: '次へ',
            onPressed: () {
              const ErrorPageRoute().go(context);
            },
          ),
        ],
      ),
    );
  }
}
