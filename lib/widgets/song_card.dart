import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const SongCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image(image: image, width: 54, height: 54, fit: BoxFit.cover),
      ),
      title: Text(title),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
      trailing: const Icon(Icons.play_arrow),
      onTap: onTap,
    );
  }
}