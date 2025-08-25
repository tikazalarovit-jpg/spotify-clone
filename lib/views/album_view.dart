import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  final ImageProvider image;
  const AlbumView({super.key, required this.image});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Album', style: Theme.of(context).textTheme.titleMedium),
              background: Image(
                image: widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Titres', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 12),
                  ...List.generate(12, (i) => _trackTile(context, i + 1)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _trackTile(BuildContext context, int index) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: widget.image),
      title: Text('Track $index'),
      subtitle: Text('Artist $index', style: Theme.of(context).textTheme.bodySmall),
      trailing: const Icon(Icons.more_horiz),
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      onTap: () {},
    );
  }
}