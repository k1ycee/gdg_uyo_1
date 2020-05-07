class TopRated {
    final int page;
    final int totalResults;
    final int totalPages;
    final List<Result> results;

    TopRated({
        this.page,
        this.totalResults,
        this.totalPages,
        this.results,
    });

    factory TopRated.fromJson(Map<String, dynamic> json) => TopRated(
        page: json["page"],
        totalResults: json["total_results"],
        totalPages: json["total_pages"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "total_results": totalResults,
        "total_pages": totalPages,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    final double popularity;
    final int id;
    final bool video;
    final int voteCount;
    final double voteAverage;
    final String title;
    final DateTime releaseDate;
    final String originalLanguage;
    final String originalTitle;
    final List<int> genreIds;
    final String backdropPath;
    final bool adult;
    final String overview;
    final String posterPath;

    Result({
        this.popularity,
        this.id,
        this.video,
        this.voteCount,
        this.voteAverage,
        this.title,
        this.releaseDate,
        this.originalLanguage,
        this.originalTitle,
        this.genreIds,
        this.backdropPath,
        this.adult,
        this.overview,
        this.posterPath,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        popularity: json["popularity"].toDouble(),
        id: json["id"],
        video: json["video"],
        voteCount: json["vote_count"],
        voteAverage: json["vote_average"].toDouble(),
        title: json["title"],
        releaseDate: DateTime.parse(json["release_date"]),
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        backdropPath: json["backdrop_path"] == null ? null : json["backdrop_path"],
        adult: json["adult"],
        overview: json["overview"],
        posterPath: json["poster_path"],
    );

    Map<String, dynamic> toJson() => {
        "popularity": popularity,
        "id": id,
        "video": video,
        "vote_count": voteCount,
        "vote_average": voteAverage,
        "title": title,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "adult": adult,
        "overview": overview,
        "poster_path": posterPath,
    };
}
