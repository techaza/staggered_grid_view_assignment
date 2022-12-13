import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/staggered_grid_view_flutter.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'define.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle = const [
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
    ];

    List<Tile> _tiles = const [
      Tile(
          url:
              'https://imgs.search.brave.com/S4lDtWJoBnzC2QIJrQMrfQmVcHcWujB6fxRsLMqJ7wc/rs:fit:545:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5I/SFRRZEZiZzRhcFVl/bVRlYzVnQmN3SGFH/YyZwaWQ9QXBp',
          title: 'Messi',
          subtitle: 'FootBall Player'),
      Tile(
          url:
              'https://imgs.search.brave.com/gv2hsSG2ltwNcIuPsyf7EMzqZXXf6Qgpc1RAQtDe4I0/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5u/TUlyLW5CNXYwcmJQ/eldFSnplWmNRSGFF/NyZwaWQ9QXBp',
          title: 'Ronaldo',
          subtitle: 'FootBall Player'),
      Tile(
          url:
              'https://imgs.search.brave.com/X79EJaCJwc-AzDaXO0k6p3koFhl16F7inAXjY9Nup48/rs:fit:300:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JRi5U/N1ZoWjBsdExoM3pE/NlpybUZwcTdBJnBp/ZD1BcGk',
          title: 'Neymar',
          subtitle: 'FootBall Player'),
      Tile(
          url:
              'https://imgs.search.brave.com/4HHZLbqfHUDZhTu0BqoKeKZsnQIxhZtTZ9jZaAmwmsw/rs:fit:592:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC53/ZVRJREZweEp0cHJR/Y25LV1I3QXB3SGFG/NyZwaWQ9QXBp',
          title: 'Rohit Sharma',
          subtitle: 'Cricket Player'),
      Tile(
          url:
              'https://imgs.search.brave.com/0B8Yk0YNBlyKsjgLmQ268VwJVbOoPPMzgT2h2zvuYtk/rs:fit:691:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5a/cHN2NC1yTEFQdVk2/NXJmV3FZUEZ3SGFG/RiZwaWQ9QXBp',
          title: 'Virat Kohli',
          subtitle: 'Cricket Player')
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Assignment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: _staggeredStyle,
          children: _tiles,
        ),
      ),
    );
  }
}
