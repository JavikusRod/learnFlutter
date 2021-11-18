class Movies {
  List<Movie> items = [];
  Movies();

  Movies.fromJsonList(List<dynamic> jsonList) {
    for (var item in jsonList) {
      final movie = Movie.fromJson(item);
      items.add(movie);
    }
  }
}

class Movie {
  Movie({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    _adult = adult;
    _backdropPath = backdropPath;
    _genreIds = genreIds;
    _id = id;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }

  Movie.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'] / 1;
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'] / 1;
    _voteCount = json['vote_count'];
  }
  bool? _adult;
  String? _backdropPath;
  List<int>? _genreIds;
  int? _id;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  double? _popularity;
  String? _posterPath;
  String? _releaseDate;
  String? _title;
  bool? _video;
  double? _voteAverage;
  int? _voteCount;

  bool? get adult => _adult;
  String? get backdropPath => _backdropPath;
  List<int>? get genreIds => _genreIds;
  int? get id => _id;
  String? get originalLanguage => _originalLanguage;
  String? get originalTitle => _originalTitle;
  String? get overview => _overview;
  double? get popularity => _popularity;
  String? get posterPath => _posterPath;
  String? get releaseDate => _releaseDate;
  String? get title => _title;
  bool? get video => _video;
  double? get voteAverage => _voteAverage;
  int? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    map['genre_ids'] = _genreIds;
    map['id'] = _id;
    map['original_language'] = _originalLanguage;
    map['original_title'] = _originalTitle;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['release_date'] = _releaseDate;
    map['title'] = _title;
    map['video'] = _video;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://www.google.com/search?q=empty+image+png&rlz=1C1CHBF_enUS909US909&sxsrf=AOaemvKbs6PIIcKHysMsLj8Op93QPufO7g:1637258921872&tbm=isch&source=iu&ictx=1&fir=vgR-wVirpwk-ZM%252COyzm5WgKiY89TM%252C_%253Bk7pneGfVyX1baM%252CLvRT88a5ESKrnM%252C_%253BuVfAVFKPjEumxM%252Cb7KDL3tF5rdwbM%252C_%253BPXpRxN8xlBUmmM%252ClzVXK-2jzerhVM%252C_%253BK4Az1YzZykBfzM%252Cb7KDL3tF5rdwbM%252C_%253BhBSfwNmKxqQF-M%252Cren7PE-CvYel0M%252C_%253BQesLvgW5oDHu3M%252CF9ibtVOxEk7MkM%252C_%253BGHbdym26eAzRCM%252CFdNZT9hRZ6zyYM%252C_%253B22oKByn4PJzFCM%252CLvRT88a5ESKrnM%252C_%253Bxgu3M79rH6DQ8M%252C9C6XzOEBfbr-WM%252C_%253BIbj5MbPPuVbTEM%252CbSowxv4SMxSR6M%252C_%253B1S0-D4Absd7b5M%252Cz2Eyhg7v_c0PxM%252C_%253Bj8pKBXRhAA2woM%252Cren7PE-CvYel0M%252C_%253BsAm9qzf6pV-eBM%252CZdNimX02nf7mgM%252C_%253Bw0Qs0CejTr2HiM%252Cren7PE-CvYel0M%252C_&vet=1&usg=AI4_-kSBcGzMg9-sCCps1Goj4ef2KjzJBw&sa=X&ved=2ahUKEwjUzMXjwKL0AhWsSzABHeLGANAQ9QF6BAgMEAE#imgrc=sAm9qzf6pV-eBM';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
}
