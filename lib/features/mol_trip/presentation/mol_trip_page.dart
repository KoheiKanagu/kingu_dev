import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kingu_dev/features/mol_trip/application/mol_trip_providers.dart';
import 'package:kingu_dev/features/mol_trip/domain/mol_trip.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MolTripPage extends HookConsumerWidget {
  const MolTripPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('モル旅'),
      ),
      body: ref.watch(molTripsProvider).maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            data: (data) => Column(
              children: [
                _Header(
                  pageController: pageController,
                  trips: data,
                ),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: data.map(
                      (trip) {
                        final controller = WebViewController();

                        final contents = ref
                                .watch(
                                  molTripEmbedHtmlListProvider(trip.memory),
                                )
                                .whenData(
                                  (value) => value
                                      .map(
                                        (e) => '<div>$e</div>',
                                      )
                                      .join(),
                                )
                                .asData
                                ?.value ??
                            '';

                        if (contents.isNotEmpty) {
                          controller.loadHtmlString(contents);
                        }

                        return WebViewWidget(
                          controller: controller,
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}

class _Header extends HookConsumerWidget {
  const _Header({
    required this.pageController,
    required this.trips,
  });

  final PageController pageController;

  final List<MolTrip> trips;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!pageController.hasClients) {
      return const SizedBox.shrink();
    }

    void animateToPage(int page) {
      pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              final next = (pageController.page?.toInt() ?? 0) - 1;
              animateToPage(next < 0 ? 0 : next);
            },
            icon: const Icon(Icons.arrow_circle_left_outlined),
          ),
          const Gap(8),
          Text(
            trips[pageController.page?.toInt() ?? 0].title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(8),
          IconButton(
            onPressed: () {
              final next = (pageController.page?.toInt() ?? 0) + 1;
              animateToPage(next >= trips.length ? trips.length - 1 : next);
            },
            icon: const Icon(Icons.arrow_circle_right_outlined),
          ),
        ],
      ),
    );
  }
}
