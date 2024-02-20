import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/features/mol_trip/application/mol_trip_providers.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MolTripPage extends HookConsumerWidget {
  const MolTripPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('モル旅'),
      ),
      body: ref.watch(molTripsProvider).maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            data: (data) => ListView(
              children: data
                  .map(
                    (e) => ListTile(
                      title: Text(e.title),
                      onTap: () {
                        launchUrlString(e.timeline);
                      },
                      leading: const Icon(Icons.link),
                    ),
                  )
                  .toList(),
            ),
          ),
    );
  }
}
