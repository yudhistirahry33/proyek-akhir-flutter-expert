import 'package:ditonton/presentation/pages/about_page.dart';
import 'package:ditonton/presentation/pages/movies/home_movie_page.dart';
import 'package:ditonton/presentation/pages/series/home_series_page.dart';
import 'package:ditonton/presentation/pages/watchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  static const ROUTE_NAME = '/main';

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    HomeMoviePage(),
    HomeSeriesPage(),
    WatchlistPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SalomonBottomBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.movie),
              title: const Text("Movies"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.tv),
              title: const Text("TV Series"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.save_alt),
              title: const Text("Watchlist"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.info_outline),
              title: const Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}
