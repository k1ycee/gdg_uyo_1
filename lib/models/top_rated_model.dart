class TopRated {
    final int page;
    final int totalResults;
    final int totalPages;
    final List<TopRatedResult> results;

    TopRated({
        this.page,
        this.totalResults,
        this.totalPages,
        this.results,
    });

    factory TopRated.fromJson(Map<String, dynamic> json) => TopRated(
        page: json["page"] == null ? null : json["page"],
        totalResults: json["total_results"] == null ? null : json["total_results"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
        results: json["results"] == null ? null : List<TopRatedResult>.from(json["results"].map((x) => TopRatedResult.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "total_results": totalResults == null ? null : totalResults,
        "total_pages": totalPages == null ? null : totalPages,
        "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class TopRatedResult {
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

    TopRatedResult({
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

    factory TopRatedResult.fromJson(Map<String, dynamic> json) => TopRatedResult(
        popularity: json["popularity"] == null ? null : json["popularity"].toDouble(),
        id: json["id"] == null ? null : json["id"],
        video: json["video"] == null ? null : json["video"],
        voteCount: json["vote_count"] == null ? null : json["vote_count"],
        voteAverage: json["vote_average"] == null ? null : json["vote_average"].toDouble(),
        title: json["title"] == null ? null : json["title"],
        releaseDate: json["release_date"] == null ? null : DateTime.parse(json["release_date"]),
        originalLanguage: json["original_language"] == null ? null : json["original_language"],
        originalTitle: json["original_title"] == null ? null : json["original_title"],
        genreIds: json["genre_ids"] == null ? null : List<int>.from(json["genre_ids"].map((x) => x)),
        backdropPath: json["backdrop_path"] == null ? null : json["backdrop_path"],
        adult: json["adult"] == null ? null : json["adult"],
        overview: json["overview"] == null ? null : json["overview"],
        posterPath: json["poster_path"] == null ? null : json["poster_path"],
    );

    Map<String, dynamic> toJson() => {
        "popularity": popularity == null ? null : popularity,
        "id": id == null ? null : id,
        "video": video == null ? null : video,
        "vote_count": voteCount == null ? null : voteCount,
        "vote_average": voteAverage == null ? null : voteAverage,
        "title": title == null ? null : title,
        "release_date": releaseDate == null ? null : "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "original_language": originalLanguage == null ? null : originalLanguage,
        "original_title": originalTitle == null ? null : originalTitle,
        "genre_ids": genreIds == null ? null : List<dynamic>.from(genreIds.map((x) => x)),
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "adult": adult == null ? null : adult,
        "overview": overview == null ? null : overview,
        "poster_path": posterPath == null ? null : posterPath,
    };
}
