import 'package:flutter/material.dart';

class SimpleCardTile extends StatelessWidget {
  const SimpleCardTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.leadingIcon,
    this.trailing,
    this.onTap,
  });

  final String title;

  final String? subtitle;

  final Icon leadingIcon;

  final Widget? trailing;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: subtitle == null ? null : Text(subtitle ?? ''),
          trailing: trailing,
          leading: leadingIcon,
          onTap: onTap,
        ),
      ),
    );
  }
}
