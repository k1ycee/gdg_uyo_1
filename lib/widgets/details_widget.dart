import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/models/now_palying.dart';
import 'package:gdg_uyo_1/models/popular.dart';
import 'package:gdg_uyo_1/models/top_rated_model.dart';
import 'package:gdg_uyo_1/models/upcoming.dart';

class NowPlayingDetails extends StatelessWidget {
  final NowPlayingResult nowPlaying;

  const NowPlayingDetails({Key key, this.nowPlaying}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(nowPlaying.title),
              background: Image.network(
                'https://image.tmdb.org/t/p/w500${nowPlaying.backdropPath}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'OverView',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    nowPlaying.overview,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Release Date',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    nowPlaying.releaseDate.toUtc().toString().substring(0, 10),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rating',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(nowPlaying.voteAverage.toString()),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class PopularDetails extends StatelessWidget {
  final PopularResult popular;

  const PopularDetails({Key key, this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(popular.title),
                background: Image.network(
                  'https://image.tmdb.org/t/p/w500${popular.backdropPath}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'OverView',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      popular.overview,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Release Date',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      popular.releaseDate.toUtc().toString().substring(0, 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rating',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(popular.voteAverage.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopRatedDetails extends StatelessWidget {
  final TopRatedResult topRated;

  const TopRatedDetails({Key key, this.topRated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(topRated.title),
              background: Image.network(
                'https://image.tmdb.org/t/p/w500${topRated.backdropPath}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'OverView',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    topRated.overview,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Release Date',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    topRated.releaseDate.toUtc().toString().substring(0, 10),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rating',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(topRated.voteAverage.toString()),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class UpcomingDetails extends StatelessWidget {
  final UpcomingResult upcoming;

  const UpcomingDetails({Key key, this.upcoming}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(upcoming.title),
              background: Image.network(
                'https://image.tmdb.org/t/p/w500${upcoming.backdropPath}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'OverView',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    upcoming.overview,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Release Date',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    upcoming.releaseDate.toUtc().toString().substring(0, 10),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rating',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(upcoming.voteAverage.toString()),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
