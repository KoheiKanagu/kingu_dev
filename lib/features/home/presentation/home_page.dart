import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';
import 'package:kingu_dev/common_widgets/digital_agency_layout_widget.dart';
import 'package:kingu_dev/common_widgets/digital_agency_navigate_button.dart';
import 'package:kingu_dev/constants/digital_agency_colors.dart';
import 'package:kingu_dev/constants/firebase_providers.dart';
import 'package:kingu_dev/gen/assets.gen.dart';
import 'package:kingu_dev/routing/error_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

const email = 'kanagu@kingu.dev';
const sourceUrl = 'https://github.com/KoheiKanagu/kingu_dev';
const workUrl =
    'https://github.com/KoheiKanagu/kingu_dev/blob/main/assets/work.md';

const githubUrl = 'https://github.com/KoheiKanagu';
const twitterUrl = 'https://twitter.com/i_am_kingu_pub';
const facebookUrl = 'https://www.facebook.com/k.g.kohei';
const steamUrl = 'https://steamcommunity.com/id/i_am_kingu';
const zennUrl = 'https://zenn.dev/kingu';
const appStoreUrl = 'https://apps.apple.com/am/developer/id1530720615';
const googlePlayUrl =
    'https://play.google.com/store/apps/developer?id=Kohei+Kanagu';
const steamReplay2022Url = 'https://s.team/y22/dngcjfm';

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
            _SimpleText(
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
            _SimpleText(
              leadingEmoji: '📧',
              text: email,
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'email',
                    );
                launchUrlString('mailto:$email');
              },
            ),
            _SimpleText(
              leadingEmoji: '💼',
              text: 'お仕事について',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'work',
                    );
                launchUrlString(workUrl);
              },
            ),
            _SimpleText(
              leadingEmoji: '🛠️',
              text: 'このサイト',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'source',
                    );
                launchUrlString(sourceUrl);
              },
            ),
            const Gap(48),
            _SimpleText(
              leading: Assets.icons.github.image(
                height: 32,
              ),
              text: githubUrl,
              headline: 'GitHub',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'github',
                    );
                launchUrlString(githubUrl);
              },
            ),
            _SimpleText(
              leading: Assets.icons.twitter.image(
                height: 32,
              ),
              text: twitterUrl,
              headline: 'Twitter',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'twitter',
                    );
                launchUrlString(twitterUrl);
              },
            ),
            _SimpleText(
              leading: Assets.icons.facebook.image(
                height: 32,
              ),
              text: facebookUrl,
              headline: 'Facebook',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'facebook',
                    );
                launchUrlString(facebookUrl);
              },
            ),
            _SimpleText(
              leading: Assets.icons.steam.image(
                height: 32,
              ),
              text: steamUrl,
              headline: 'Steam',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'steam',
                    );
                launchUrlString(steamUrl);
              },
            ),
            _SimpleText(
              leading: Assets.icons.zenn.image(
                height: 32,
              ),
              text: zennUrl,
              headline: 'Zenn',
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'zenn',
                    );
                launchUrlString(zennUrl);
              },
            ),
            const Gap(48),
            _ImageButton(
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'appStore',
                    );
                launchUrlString(appStoreUrl);
              },
              image: Assets.icons.appStore.image(height: 40),
            ),
            _ImageButton(
              onTap: () {
                ref.read(firebaseAnalyticsProvider).logEvent(
                      name: 'googlePlay',
                    );
                launchUrlString(googlePlayUrl);
              },
              image: Assets.icons.googlePlay.image(height: 40),
            ),
          ].intersperse(
            const Gap(8),
          ),
          const Gap(64),
          _ImageButton(
            onTap: () {
              launchUrlString(steamReplay2022Url);
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

class _ImageButton extends HookConsumerWidget {
  const _ImageButton({
    required this.onTap,
    required this.image,
  });

  final VoidCallback onTap;

  final Image image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
      ),
      onPressed: onTap,
      child: image,
    );
  }
}

class _SimpleText extends HookConsumerWidget {
  const _SimpleText({
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
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        leading ?? Text(leadingEmoji ?? ''),
        const SizedBox(
          width: 4,
        ),
        Text(headline),
        const SizedBox(
          width: 4,
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
