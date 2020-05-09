import 'dart:convert';

import 'package:gdg_uyo_1/models/movie_search.dart';
import 'package:gdg_uyo_1/models/now_palying.dart';
import 'package:gdg_uyo_1/models/popular.dart';
import 'package:gdg_uyo_1/models/top_rated_model.dart';
import 'package:gdg_uyo_1/models/upcoming.dart';
import 'package:http/http.dart' as http;

class MovieProvider{
  String baseurl = 'https://api.themoviedb.org/3/movie';
  String apiKey = '54275406e0cd0a14cad443f336322206';

  Future<List<NowPlayingResult>> showing()async{
    final showReq = await http.get('$baseurl/popular?api_key=$apiKey&language=en-US');
    if(showReq.statusCode == 200){
      final stuff = jsonDecode(showReq.body);
      final Iterable json = stuff["results"];
      return json.map((shrq) => NowPlayingResult.fromJson(shrq));
    }
    else{
      return null;
    }
  }

  Future<List<PopularResult>> popOpi()async{
    final paopi = await http.get('$baseurl/now_playing?api_key=$apiKey&language=en-US');
    if(paopi.statusCode == 200){
      final stuff = jsonDecode(paopi.body);
      final Iterable json = stuff["results"];
      return json.map((pao) => PopularResult.fromJson(pao));
    }
    else{
      return null;
    }
  }

  Future<List<TopRatedResult>> tpRated()async{
    final rated = await http.get('$baseurl/top_rated?api_key=$apiKey&language=en-US');
    if(rated.statusCode == 200){
      final stuff = jsonDecode(rated.body);
      final Iterable json = stuff["results"];
      return json.map((rets) => TopRatedResult.fromJson(rets));
    }
    else{
      return null;
    }
  }

  Future<List<MovieSearchResult>> movRequest(String movReq)async{
    final request = await http.get('https://api.themoviedb.org/3/search/movie?api_key=$apiKey&query=$movReq');
    if(request.statusCode == 200){
      final stuff = jsonDecode(request.body);
      final Iterable json = stuff["results"];
      return json.map((mvsr) => MovieSearchResult.fromJson(mvsr)).toList();
    }
    return null;
  }
  
  Future<List<UpcomingResult>> comingSoon()async{
    final coming = await http.get('$baseurl/upcoming?api_key=$apiKey&language=en-US');
    if(coming.statusCode == 200){
      final stuff = jsonDecode(coming.body);
      final Iterable json = stuff["results"];
      return json.map((coms) => UpcomingResult.fromJson(coms));
    }
    return null;
  }
}