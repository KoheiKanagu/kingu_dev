import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/firebase.dart';
import 'package:kingu_dev/widgets/simple_card_tile.dart';
import 'package:url_launcher/url_launcher_string.dart';

const email = 'kanagu@kingu.dev';
const sourceUrl = 'https://github.com/KoheiKanagu/kingu_dev';
const workUrl =
    'https://github.com/KoheiKanagu/kingu_dev/blob/main/assets/work.md';

class HomePage extends HookConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SimpleCardTile(
            title: 'Kohei Kanagu',
            subtitle: '金具浩平',
            leadingIcon: const Icon(Icons.tag_faces),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'nyan',
                  );
              launchUrlString('https://youtu.be/QH2-TGUlwu4');
            },
          ),
          SimpleCardTile(
            title: 'email',
            subtitle: email,
            leadingIcon: const Icon(Icons.mail),
            trailing: const Icon(Icons.send),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'email',
                  );
              launchUrlString('mailto:$email');
            },
          ),
          SimpleCardTile(
            title: 'このサイト',
            subtitle: sourceUrl,
            leadingIcon: const Icon(Icons.code),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'source',
                  );
              launchUrlString(sourceUrl);
            },
          ),
          SimpleCardTile(
            title: 'お仕事について',
            leadingIcon: const Icon(Icons.work),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'work',
                  );

              launchUrlString(workUrl);
            },
          ),
          const Divider(),
          SimpleCardTile(
            title: 'GitHub',
            leadingIcon: const Icon(FontAwesomeIcons.github),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'github',
                  );
              launchUrlString('https://github.com/KoheiKanagu');
            },
          ),
          SimpleCardTile(
            title: 'Twitter',
            leadingIcon: const Icon(FontAwesomeIcons.twitter),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'twitter',
                  );
              launchUrlString('https://twitter.com/i_am_kingu_pub');
            },
          ),
          SimpleCardTile(
            title: 'Facebook',
            leadingIcon: const Icon(FontAwesomeIcons.facebook),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'facebook',
                  );

              launchUrlString('https://www.facebook.com/k.g.kohei');
            },
          ),
          SimpleCardTile(
            title: 'Steam',
            leadingIcon: const Icon(FontAwesomeIcons.steam),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'steam',
                  );
              launchUrlString('https://steamcommunity.com/id/i_am_kingu');
            },
          ),
          SimpleCardTile(
            title: 'Zenn',
            leadingIcon: const Icon(FontAwesomeIcons.solidCircleQuestion),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'zenn',
                  );
              launchUrlString('https://zenn.dev/kingu');
            },
          ),
          const Divider(),
          SimpleCardTile(
            title: 'App Store',
            leadingIcon: const Icon(FontAwesomeIcons.appStoreIos),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'appStore',
                  );
              launchUrlString(
                'https://apps.apple.com/am/developer/id1530720615',
              );
            },
          ),
          SimpleCardTile(
            title: 'Google Play',
            leadingIcon: const Icon(FontAwesomeIcons.googlePlay),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              ref.read(firebaseAnalytics).logEvent(
                    name: 'googlePlay',
                  );
              launchUrlString(
                'https://play.google.com/store/apps/developer?id=Kohei+Kanagu',
              );
            },
          ),
        ],
      ),
    );
  }
}
