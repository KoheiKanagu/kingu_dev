import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/features/profile/presentation/profile_body.dart';

part 'profile_page_route.g.dart';

@TypedGoRoute<ProfilePageRoute>(
  path: ProfilePageRoute.path,
)
class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  static const path = '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilePageRoute'),
      ),
      body: const ProfileBody(),
    );
  }
}
