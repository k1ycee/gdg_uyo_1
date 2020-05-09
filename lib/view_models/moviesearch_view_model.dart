import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/movie_search.dart';

class GetSearch extends ChangeNotifier{

  List<SearchViewModel> ser = List<SearchViewModel>();

  Future<void> serReq(String find)async{
    final found = await MovieProvider().movRequest(find);
    this.ser = found.map((foo) => SearchViewModel(searchRes: foo)).toList();
    // print(this.ser);
    notifyListeners();
  }
}



class SearchViewModel{

  final MovieSearchResult searchRes;
  SearchViewModel({this.searchRes});


  double get popularity{
    return this.searchRes.popularity;
  }

  int get voteCnt{
    return this.searchRes.voteCount;
  }

  bool get vid{
    return this.searchRes.video;
  }

  String get postaPath{
    return this.searchRes.posterPath;
  }

  int get id{
    return this.searchRes.id;
  }

  bool get adult{
    return this.searchRes.adult;
  }

  String get bckDropPath{
    return this.searchRes.backdropPath;
  }

  List get genres{
    return this.searchRes.genreIds;
  }

  
  String get originTitle{
    return this.searchRes.originalTitle;
  }

  String get title{
    return this.searchRes.title;
  }

  double get voteAvg{
    return this.searchRes.voteAverage;
  }

  String get overView{
    return this.searchRes.overview;
  }

  DateTime get releaseDate{
    return this.searchRes.releaseDate;
  }
}
