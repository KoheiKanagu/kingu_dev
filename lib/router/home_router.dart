import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/pages/home/home_page.dart';

part 'home_router.g.dart';

@TypedGoRoute<HomePageRoute>(
  path: HomePageRoute.path,
)
class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
