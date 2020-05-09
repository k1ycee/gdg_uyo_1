import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/top_rated_model.dart';

class GetTopRated extends ChangeNotifier{ 

  List<TopRatedViewModel> topRtvm = List<TopRatedViewModel>();

  Future<void> topRated()async{
    final tprt = await MovieProvider().tpRated();
    this.topRtvm = tprt.map((trp) => TopRatedViewModel(topRated: trp)).toList();
    notifyListeners();
  }
}


class TopRatedViewModel{
  final TopRatedResult topRated;
  TopRatedViewModel({this.topRated});

 double get popularity{
    return this.topRated.popularity;
  }

  int get voteCnt{
    return this.topRated.voteCount;
  }

  bool get vid{
    return this.topRated.video;
  }

  String get postaPath{
    return this.topRated.posterPath;
  }

  int get id{
    return this.topRated.id;
  }

  bool get adult{
    return this.topRated.adult;
  }

  String get bckDropPath{
    return this.topRated.backdropPath;
  }

  List get genres{
    return this.topRated.genreIds;
  }

  
  String get originTitle{
    return this.topRated.originalTitle;
  }

  String get title{
    return this.topRated.title;
  }

  double get voteAvg{
    return this.topRated.voteAverage;
  }

  String get overView{
    return this.topRated.overview;
  }

  DateTime get releaseDate{
    return this.topRated.releaseDate;
  }
}