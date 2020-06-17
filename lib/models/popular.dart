class Popular {
    final int page;
    final int totalResults;
    final int totalPages;
    final List<PopularResult> results;

    Popular({
        this.page,
        this.totalResults,
        this.totalPages,
        this.results,
    });

    factory Popular.fromJson(Map<String, dynamic> json) => Popular(
        page: json["page"] == null ? null : json["page"],
        totalResults: json["total_results"] == null ? null : json["total_results"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
        results: json["results"] == null ? null : List<PopularResult>.from(json["results"].map((x) => PopularResult.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "total_results": totalResults == null ? null : totalResults,
        "total_pages": totalPages == null ? null : totalPages,
        "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class PopularResult {
    final double popularity;
    final int voteCount;
    final bool video;
    final String posterPath;
    final int id;
    final bool adult;
    final String backdropPath;
    final OriginalLanguage originalLanguage;
    final String originalTitle;
    final List<int> genreIds;
    final String title;
    final double voteAverage;
    final String overview;
    final DateTime releaseDate;

    PopularResult({
        this.popularity,
        this.voteCount,
        this.video,
        this.posterPath,
        this.id,
        this.adult,
        this.backdropPath,
        this.originalLanguage,
        this.originalTitle,
        this.genreIds,
        this.title,
        this.voteAverage,
        this.overview,
        this.releaseDate,
    });

    factory PopularResult.fromJson(Map<String, dynamic> json) => PopularResult(
        popularity: json["popularity"] == null ? null : json["popularity"].toDouble(),
        voteCount: json["vote_count"] == null ? null : json["vote_count"],
        video: json["video"] == null ? null : json["video"],
        posterPath: json["poster_path"] == null ? null : json["poster_path"],
        id: json["id"] == null ? null : json["id"],
        adult: json["adult"] == null ? null : json["adult"],
        backdropPath: json["backdrop_path"] == null ? null : json["backdrop_path"],
        originalLanguage: json["original_language"] == null ? null : originalLanguageValues.map[json["original_language"]],
        originalTitle: json["original_title"] == null ? null : json["original_title"],
        genreIds: json["genre_ids"] == null ? null : List<int>.from(json["genre_ids"].map((x) => x)),
        title: json["title"] == null ? null : json["title"],
        voteAverage: json["vote_average"] == null ? null : json["vote_average"].toDouble(),
        overview: json["overview"] == null ? null : json["overview"],
        releaseDate: json["release_date"] == null ? null : DateTime.parse(json["release_date"]),
    );

    Map<String, dynamic> toJson() => {
        "popularity": popularity == null ? null : popularity,
        "vote_count": voteCount == null ? null : voteCount,
        "video": video == null ? null : video,
        "poster_path": posterPath == null ? null : posterPath,
        "id": id == null ? null : id,
        "adult": adult == null ? null : adult,
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "original_language": originalLanguage == null ? null : originalLanguageValues.reverse[originalLanguage],
        "original_title": originalTitle == null ? null : originalTitle,
        "genre_ids": genreIds == null ? null : List<dynamic>.from(genreIds.map((x) => x)),
        "title": title == null ? null : title,
        "vote_average": voteAverage == null ? null : voteAverage,
        "overview": overview == null ? null : overview,
        "release_date": releaseDate == null ? null : "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
    };
}

enum OriginalLanguage { EN, KO }

final originalLanguageValues = EnumValues({
    "en": OriginalLanguage.EN,
    "ko": OriginalLanguage.KO
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
