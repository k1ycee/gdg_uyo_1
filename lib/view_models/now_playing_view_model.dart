import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/now_palying.dart';

class GetPlaying extends ChangeNotifier{
  PlayingViewModel play = PlayingViewModel();

  Future<void> plays()async{
    final ply = await MovieProvider().showing();
    this.play = PlayingViewModel(nowPlaying: ply);
    notifyListeners();
  }
}


class PlayingViewModel{
  final NowPlaying nowPlaying;
  PlayingViewModel({this.nowPlaying});

  List get results{
    return nowPlaying.results;
  }

  int get page{
    return nowPlaying.page;
  }

  int get totalRes{
    return nowPlaying.totalResults;
  }

  int get totalpages{
    return nowPlaying.totalPages;
  }

  Dates get dates{
    return nowPlaying.dates;
  }
}