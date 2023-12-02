import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/features/profile/presentation/profile_page.dart';

part 'profile_route.g.dart';

@TypedGoRoute<ProfilePageRoute>(
  path: ProfilePageRoute.path,
)
class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  static const path = '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}
