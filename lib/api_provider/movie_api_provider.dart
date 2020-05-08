import 'dart:convert';

import 'package:gdg_uyo_1/models/movie_search.dart';
import 'package:gdg_uyo_1/models/now_palying.dart';
import 'package:gdg_uyo_1/models/popular.dart';
import 'package:gdg_uyo_1/models/top_rated_model.dart';
import 'package:gdg_uyo_1/models/upcoming.dart';
import 'package:http/http.dart' as http;

class MovieProvider{
  String baseurl = 'https://api.themoviedb.org/3/movie/';
  String apiKey = '54275406e0cd0a14cad443f336322206';

  Future<NowPlaying> showing()async{
    final showReq = await http.get('$baseurl'+'popular?api_key=$apiKey');
    if(showReq.statusCode == 2000){
      return NowPlaying.fromJson(jsonDecode(showReq.body));
    }
    else{
      return null;
    }
  }

  Future<Popular> popOpi()async{
    final paopi = await http.get('$baseurl'+'now_playing?api_key=$apiKey');
    if(paopi.statusCode == 200){
      return Popular.fromJson(jsonDecode(paopi.body));
    }
    else{
      return null;
    }
  }

  Future<TopRated> tpRated()async{
    final rated = await http.get('$baseurl'+'top_rated?api_key=$apiKey');
    if(rated.statusCode == 200){
      return TopRated.fromJson(jsonDecode(rated.body));
    }
    else{
      return null;
    }
  }

  Future<MovieSearch> movRequest(String movReq)async{
    final request = await http.get('$baseurl'+'?api_key=$apiKey'+'&query=$movReq');
    if(request.statusCode == 200){
      return MovieSearch.fromJson(jsonDecode(request.body));
    }
    return null;
  }
  
  Future<Upcoming> comingSoon()async{
    final coming = await http.get('$baseurl'+'upcoming?api_key=$apiKey');
    if(coming.statusCode == 200){
      return Upcoming.fromJson(jsonDecode(coming.body));
    }
    return null;
  }
}