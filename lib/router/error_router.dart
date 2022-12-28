import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:kingu_dev/pages/error/error_page.dart';

part 'error_router.g.dart';

@TypedGoRoute<ErrorPageRoute>(
  path: ErrorPageRoute.path,
)
class ErrorPageRoute extends GoRouteData {
  const ErrorPageRoute();

  static const path = '/error';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ErrorPage();
  }
}
