import 'package:ditonton/common/constants.dart';
import 'package:ditonton/presentation/pages/movies/watchlist_movies_page.dart';
import 'package:ditonton/presentation/pages/series/watchlist_series_page.dart';
import 'package:flutter/material.dart';

class WatchlistPage extends StatelessWidget {
  static const ROUTE_NAME = '/watchlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watchlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            watchlistButton(
              title: 'Movies Watchlist',
              onTap: () {
                Navigator.pushNamed(context, WatchlistMoviesPage.ROUTE_NAME);
              },
            ),
            SizedBox(height: 16),
            watchlistButton(
              title: 'TV Series Watchlist',
              onTap: () {
                Navigator.pushNamed(context, WatchlistSeriesPage.ROUTE_NAME);
              },
            ),
          ],
        ),
      ),
    );
  }

  InkWell watchlistButton({required String title, required Function() onTap}) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: kHeading6,
            ),
            Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
