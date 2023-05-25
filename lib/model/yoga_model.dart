class YogaModel {
  static String YogaTable1 = "BeginnerYoga";
  static String YogaTable2 = "  weightLossYoga";
  static String YogaTable3 = "kidsLossYoga";
  static String YogaSummary = "YogaSummery";
  static String IDName = "ID";
  static String YogaName = "YogaName";
  static String SecondsOrNot = "SecondsOrNot";
  static String ImageName = "ImageName";
  static List<String> YogaTable1ColumnName = [
    YogaModel.IDName,
    YogaModel.ImageName,
    YogaModel.SecondsOrNot,
    YogaModel.YogaName
  ];
  static String YogaWorkOutName = "YogaWorkOutName";
  static String BackImage = "BackImage";
  static String timeTaken = "timeTaken";
  static String totalNumberOfWork = "totalNumberOfWork";
}

class Yoga {
  final int? id;
  final bool seconds;
  final String yogaTitle;
  final String yogaImagerl;

  const Yoga({
    this.id,
    required this.seconds,
    required this.yogaTitle,
    required this.yogaImagerl,
  });
  Yoga copy({
    int? id,
    bool? seconds,
    String? yogaTitle,
    String? yogaImagerl,
  }) {
    return Yoga(
      id: id ?? this.id,
      seconds: seconds ?? this.seconds,
      yogaTitle: yogaTitle ?? this.yogaTitle,
      yogaImagerl: yogaImagerl ?? this.yogaImagerl,
    );
  }

  //Convert data From json into Dart
  static Yoga fromjson(Map<String, Object?> json) {
    return Yoga(
      id: json[YogaModel.IDName] as int?,
      seconds: json[YogaModel.SecondsOrNot] == 1,
      yogaTitle: json[YogaModel.SecondsOrNot] as String,
      yogaImagerl: json[YogaModel.YogaName] as String,
    );
  }

  //Convert Data from dart into json
  Map<String, Object?> toJson() {
    return {
      YogaModel.IDName: id,
      YogaModel.SecondsOrNot: seconds ? 1 : 0,
      YogaModel.YogaName: yogaTitle,
      YogaModel.ImageName: yogaImagerl,
    };
  }
}

//Add Yoga Summary Model
class YogaSummery {
  final int? id;

  final String YogaWorkOutName;
  final String BackImage;
  final String timeTaken;
  final String totalNumberOfWork;

  const YogaSummery({
    this.id,
    required this.YogaWorkOutName,
    required this.BackImage,
    required this.timeTaken,
    required this.totalNumberOfWork,
  });
  YogaSummery copy({
    int? id,
    String? YogaWorkOutName,
    String? BackImage,
    String? YogatimeTakenWorkOutName,
    String? totalNumberOfWork,
  }) {
    return YogaSummery(
      id: id ?? this.id,
      YogaWorkOutName: YogaWorkOutName ?? this.YogaWorkOutName,
      BackImage: BackImage ?? this.BackImage,
      timeTaken: YogatimeTakenWorkOutName ?? this.timeTaken,
      totalNumberOfWork: totalNumberOfWork ?? this.totalNumberOfWork,
    );
  }

  //Convert data From json into Dart
  static YogaSummery fromjson(Map<String, Object?> json) {
    return YogaSummery(
      id: json[YogaModel.IDName] as int?,
      YogaWorkOutName: json[YogaModel.YogaWorkOutName] as String,
      BackImage: json[YogaModel.BackImage] as String,
      timeTaken: json[YogaModel.timeTaken] as String,
      totalNumberOfWork: json[YogaModel.totalNumberOfWork] as String,
    );
  }

  //Convert Data from dart into json
  Map<String, Object?> toJson() {
    return {
      YogaModel.IDName: id,
      YogaModel.YogaWorkOutName: YogaWorkOutName,
      YogaModel.BackImage: BackImage,
      YogaModel.timeTaken: timeTaken,
      YogaModel.totalNumberOfWork: totalNumberOfWork,
    };
  }
}
