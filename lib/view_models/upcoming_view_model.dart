import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/upcoming.dart';

class GetUpcoming extends ChangeNotifier{

  List<UpcomingViewModel> upcom = List<UpcomingViewModel>();

  Future<void> upComing()async{
    final upc = await MovieProvider().comingSoon();
    this.upcom = upc.map((ups) => UpcomingViewModel(upcoming: ups)).toList();
    notifyListeners();
  }
}


class UpcomingViewModel{
  final UpcomingResult upcoming;
  UpcomingViewModel({this.upcoming});

 double get popularity{
    return this.upcoming.popularity;
  }

  int get voteCnt{
    return this.upcoming.voteCount;
  }

  bool get vid{
    return this.upcoming.video;
  }

  String get postaPath{
    return this.upcoming.posterPath;
  }

  int get id{
    return this.upcoming.id;
  }

  bool get adult{
    return this.upcoming.adult;
  }

  String get bckDropPath{
    return this.upcoming.backdropPath;
  }

  List get genres{
    return this.upcoming.genreIds;
  }

  
  String get originTitle{
    return this.upcoming.originalTitle;
  }

  String get title{
    return this.upcoming.title;
  }

  double get voteAvg{
    return this.upcoming.voteAverage;
  }

  String get overView{
    return this.upcoming.overview;
  }

  DateTime get releaseDate{
    return this.upcoming.releaseDate;
  }
}