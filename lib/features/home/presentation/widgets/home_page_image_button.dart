import 'package:flutter/material.dart';

class HomePageImageButton extends StatelessWidget {
  const HomePageImageButton({
    super.key,
    required this.onTap,
    required this.image,
  });

  final VoidCallback onTap;

  final Image image;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
      ),
      onPressed: onTap,
      child: image,
    );
  }
}
