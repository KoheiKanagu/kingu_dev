import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

const email = 'kanagu@kingu.dev';
const sourceUrl = 'https://github.com/KoheiKanagu/kingu_dev';

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
          SelectionArea(
            child: Card(
              child: ListTile(
                title: const Text('Kohei Kanagu'),
                subtitle: const Text('金具浩平'),
                leading: IconButton(
                  onPressed: () =>
                      launchUrlString('https://youtu.be/QH2-TGUlwu4'),
                  icon: const Icon(Icons.tag_faces),
                ),
              ),
            ),
          ),
          SelectionArea(
            child: Card(
              child: ListTile(
                title: const Text('email'),
                subtitle: const Text(email),
                leading: IconButton(
                  onPressed: () => launchUrlString('mailto:$email'),
                  icon: const Icon(Icons.send),
                ),
              ),
            ),
          ),
          SelectionArea(
            child: Card(
              child: ListTile(
                title: const Text('このサイト'),
                subtitle: const Text(sourceUrl),
                leading: IconButton(
                  onPressed: () => launchUrlString(sourceUrl),
                  icon: const Icon(Icons.open_in_new),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
