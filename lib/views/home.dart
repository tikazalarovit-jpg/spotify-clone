import 'package:flutter/material.dart';
import '../widgets/album_card.dart';
import '../widgets/song_card.dart';
import 'album_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accueil',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Albums populaires',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              AlbumCard(
                image: const AssetImage('assets/covers/cover1.jpg'),
                label: 'Daily Mix 1',
                onTap: () => _openAlbum(context, const AssetImage('assets/covers/cover1.jpg')),
              ),
              AlbumCard(
                image: const AssetImage('assets/covers/cover2.jpg'),
                label: 'Focus Beats',
                onTap: () => _openAlbum(context, const AssetImage('assets/covers/cover2.jpg')),
              ),
              AlbumCard(
                image: const AssetImage('assets/covers/cover3.jpg'),
                label: 'Chill Vibes',
                onTap: () => _openAlbum(context, const AssetImage('assets/covers/cover3.jpg')),
              ),
              AlbumCard(
                image: const AssetImage('assets/covers/cover4.jpg'),
                label: 'Afro Heat',
                onTap: () => _openAlbum(context, const AssetImage('assets/covers/cover4.jpg')),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Recommandé pour vous',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          SongCard(
            image: const AssetImage('assets/covers/cover2.jpg'),
            title: 'Ocean Eyes',
            subtitle: 'Billie Eilish',
            onTap: () {},
          ),
          SongCard(
            image: const AssetImage('assets/covers/cover3.jpg'),
            title: 'Blinding Lights',
            subtitle: 'The Weeknd',
            onTap: () {},
          ),
          SongCard(
            image: const AssetImage('assets/covers/cover1.jpg'),
            title: 'Essence',
            subtitle: 'Wizkid ft. Tems',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  void _openAlbum(BuildContext context, ImageProvider image) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => AlbumView(image: image),
      ),
    );
  }
}