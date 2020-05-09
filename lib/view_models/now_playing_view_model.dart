import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/now_palying.dart';

class GetPlaying extends ChangeNotifier{
  List<PlayingViewModel> play = List<PlayingViewModel>();

  Future<void> plays()async{
    final ply = await MovieProvider().showing();
    this.play = ply.map((ploys) => PlayingViewModel(nowPlaying: ploys)).toList();
    notifyListeners();
  }
}


class PlayingViewModel{
  final NowPlayingResult nowPlaying;
  PlayingViewModel({this.nowPlaying});

  double get popularity{
    return this.nowPlaying.popularity;
  }

  int get voteCnt{
    return this.nowPlaying.voteCount;
  }

  bool get vid{
    return this.nowPlaying.video;
  }

  String get postaPath{
    return this.nowPlaying.posterPath;
  }

  int get id{
    return this.nowPlaying.id;
  }

  bool get adult{
    return this.nowPlaying.adult;
  }

  String get bckDropPath{
    return this.nowPlaying.backdropPath;
  }

  List get genres{
    return this.nowPlaying.genreIds;
  }

  
  String get originTitle{
    return this.nowPlaying.originalTitle;
  }

  String get title{
    return this.nowPlaying.title;
  }

  double get voteAvg{
    return this.nowPlaying.voteAverage;
  }

  String get overView{
    return this.nowPlaying.overview;
  }

  DateTime get releaseDate{
    return this.nowPlaying.releaseDate;
  }
}