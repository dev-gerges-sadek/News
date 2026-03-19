
import 'package:flutter/material.dart';

class PlaceholderImage extends StatelessWidget {
  const PlaceholderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.grey.shade200,
      child: const Icon(Icons.image_outlined, size: 80, color: Colors.grey),
    );
  }
}