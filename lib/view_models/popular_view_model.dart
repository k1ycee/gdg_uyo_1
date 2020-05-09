import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/popular.dart';

class GetPopular extends ChangeNotifier{
  List<PopularViewModel> popu = List<PopularViewModel>();

  Future<void> popoular()async{
    final popule = await MovieProvider().popOpi();
    this.popu = popule.map((popl) => PopularViewModel(popular: popl)).toList();
    notifyListeners();
  }
}

class PopularViewModel{
  final PopularResult popular;
  PopularViewModel({this.popular});

  double get popularity{
    return this.popular.popularity;
  }

  int get voteCnt{
    return this.popular.voteCount;
  }

  bool get vid{
    return this.popular.video;
  }

  String get postaPath{
    return this.popular.posterPath;
  }

  int get id{
    return this.popular.id;
  }

  bool get adult{
    return this.popular.adult;
  }

  String get bckDropPath{
    return this.popular.backdropPath;
  }

  List get genres{
    return this.popular.genreIds;
  }

  
  String get originTitle{
    return this.popular.originalTitle;
  }

  String get title{
    return this.popular.title;
  }

  double get voteAvg{
    return this.popular.voteAverage;
  }

  String get overView{
    return this.popular.overview;
  }

  DateTime get releaseDate{
    return this.popular.releaseDate;
  }
}