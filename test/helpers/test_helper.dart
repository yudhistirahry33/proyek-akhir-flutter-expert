import 'package:ditonton/data/datasources/db/database_helper.dart';
import 'package:ditonton/data/datasources/db/database_helper_series.dart';
import 'package:ditonton/data/datasources/movies/movie_local_data_source.dart';
import 'package:ditonton/data/datasources/movies/movie_remote_data_source.dart';
import 'package:ditonton/data/datasources/series/series_local_data_source.dart';
import 'package:ditonton/data/datasources/series/series_remote_data_source.dart';
import 'package:ditonton/domain/repositories/movie_repository.dart';
import 'package:ditonton/domain/repositories/series_repository.dart';
import 'package:ditonton/domain/usecases/movies/get_movie_detail.dart';
import 'package:ditonton/domain/usecases/movies/get_movie_recommendations.dart';
import 'package:ditonton/domain/usecases/movies/get_now_playing_movies.dart';
import 'package:ditonton/domain/usecases/movies/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/movies/get_top_rated_movies.dart';
import 'package:ditonton/domain/usecases/movies/get_watchlist_movies.dart';
import 'package:ditonton/domain/usecases/movies/get_watchlist_status.dart';
import 'package:ditonton/domain/usecases/movies/remove_watchlist.dart';
import 'package:ditonton/domain/usecases/movies/save_watchlist.dart';
import 'package:ditonton/domain/usecases/movies/search_movies.dart';
import 'package:ditonton/domain/usecases/series/get_now_playing_series.dart';
import 'package:ditonton/domain/usecases/series/get_popular_series.dart';
import 'package:ditonton/domain/usecases/series/get_series_detail.dart';
import 'package:ditonton/domain/usecases/series/get_series_recommendations.dart';
import 'package:ditonton/domain/usecases/series/get_top_rated_series.dart';
import 'package:ditonton/domain/usecases/series/get_watchlist_series.dart';
import 'package:ditonton/domain/usecases/series/get_watchlist_series_status.dart';
import 'package:ditonton/domain/usecases/series/remove_watchlist_series.dart';
import 'package:ditonton/domain/usecases/series/save_watchlist_series.dart';
import 'package:ditonton/domain/usecases/series/search_series.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
  MovieLocalDataSource,
  DatabaseHelper,
  GetNowPlayingMovies,
  GetPopularMovies,
  GetTopRatedMovies,
  GetMovieRecommendations,
  GetMovieDetail,
  GetWatchlistMovies,
  GetWatchListStatus,
  RemoveWatchlist,
  SaveWatchlist,
  SearchMovies,

  SeriesRepository,
  SeriesRemoteDataSource,
  SeriesLocalDataSource,
  DatabaseHelperSeries,
  GetNowPlayingSeries,
  GetPopularSeries,
  GetTopRatedSeries,
  GetSeriesRecommendations,
  GetSeriesDetail,
  GetWatchlistSeries,
  GetWatchlistSeriesStatus,
  RemoveWatchlistSeries,
  SaveWatchlistSeries,
  SearchSeries,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
