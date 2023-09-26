// ignore_for_file: lines_longer_than_80_chars

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
      const Divider(),
      MySimpleText(
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
      MySimpleText(
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
      MySimpleText(
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
      const Gap(8),
      Wrap(
        spacing: 8,
        children: [
          GestureDetector(
            onTap: () {
              ref.read(firebaseAnalyticsProvider).logEvent(
                    name: 'appStore',
                  );
              launchUrlString(MyProfile.appStoreUrl);
            },
            child: Assets.icons.appStore.image(
              height: 48,
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(firebaseAnalyticsProvider).logEvent(
                    name: 'googlePlay',
                  );
              launchUrlString(MyProfile.googlePlayUrl);
            },
            child: Assets.icons.googlePlay.image(
              height: 48,
            ),
          ),
        ],
      ),
      const Divider(),
      SelectableText(
        'ゲーム',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      MySimpleText(
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
      ),
      const Divider(),
      SelectableText(
        '執筆',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      MySimpleText(
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
      const Gap(8),
      SelectableText(
        '国際会議論文',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      ...[
        'Kohei Kanagu, Kota Tsubouchi and Nobuhiko Nishio, "Colorful PDR: Colorizing PDR with Shopping Context in Walking", IPIN2017, Hokkaido, Japan., Sep, 2017.',
        'Shun Yoshimi, Kohei Kanagu, Masahiro Mochizuki, Kazuya Murao, and Nobuhiko Nishio, "PDR Trajectory Estimation using Pedestrian-Space Constraints: Real World Evaluations", HASCA2015, Osaka, Japan, Sep, 2015.',
      ].map<Widget>(
        (e) => SelectableText(
          e,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      const Gap(8),
      SelectableText(
        '国内研究会・シンポジウム等',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      ...[
        '金具 浩平, 川内 菜津美, 大槻 拓未, 西尾 信彦: "屋内空間における係留状態認識, 情報処理学会, マルチメディア, 分散, 協調とモバイル(DICOMO 2018)シンポジウム論文集, pp.94-99, 2018年7月4日.',
        '金具 浩平，望月 祐洋，村尾 和哉，西尾 信彦: "Fireman Dead Reckoning: 屋内における消防士向け自律航法の検討" ユビキタス・ウェアラブルワークショップ, （UWW2015）予稿集, p.37, 2015年12月19日, ベストプレゼンテーション賞',
        '吉見 駿, 金具 浩平, 望月 祐洋, 村尾 和哉, 西尾 信彦: "実環境における歩行空間制約を活用したPDR軌跡推定" 情報処理学会, マルチメディア, 分散, 協調とモバイル(DICOMO 2015) シンポジウム論文集, pp.310-318, 2015年7月8日, ヤングリサーチャー賞',
      ].map<Widget>(
        (e) => SelectableText(
          e,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    ]
        .intersperse(
          const Gap(8),
        )
        .toList();

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
