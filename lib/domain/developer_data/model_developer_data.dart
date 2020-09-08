import 'package:json_annotation/json_annotation.dart';
part 'model_developer_data.g.dart';

@JsonSerializable(nullable: false)
class ModelDeveloperData {
  @JsonKey(name: 'basic')
  BasicDetails basic;

  @JsonKey(name: 'previousJobDetails')
  List<PreviousJobDetails> previousJobDetails;

  @JsonKey(name: 'appGallery')
  List<AppGallery> appGallery;

  ModelDeveloperData({this.basic, this.previousJobDetails, this.appGallery});

  factory ModelDeveloperData.fromJson(Map<String, dynamic> json) =>
      _$ModelDeveloperDataFromJson(json);
  Map<String, dynamic> toJson() => _$ModelDeveloperDataToJson(this);
}

@JsonSerializable(nullable: false)
class BasicDetails {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'address')
  String address;

  @JsonKey(name: 'designation')
  String designation;

  @JsonKey(name: 'tools')
  String tools;

  @JsonKey(name: 'mailID')
  String mailID;

  @JsonKey(name: 'contactNo')
  String contactNo;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'githubUrl')
  String githubUrl;

  @JsonKey(name: 'resumeUrl')
  String resumeUrl;

  BasicDetails({
    this.name,
    this.address,
    this.designation,
    this.tools,
    this.mailID,
    this.contactNo,
    this.image,
    this.githubUrl,
    this.resumeUrl,
  });

  factory BasicDetails.fromJson(Map<String, dynamic> json) =>
      _$BasicDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$BasicDetailsToJson(this);
}

@JsonSerializable(nullable: false)
class PreviousJobDetails {
  @JsonKey(name: 'designation')
  String designation;

  @JsonKey(name: 'companyName')
  String companyName;

  @JsonKey(name: 'companyLogo')
  String companyLogo;

  @JsonKey(name: 'companyLocation')
  String companyLocation;

  @JsonKey(name: 'period')
  String period;

  @JsonKey(name: 'description')
  String description;

  PreviousJobDetails({
    this.designation,
    this.companyName,
    this.companyLogo,
    this.companyLocation,
    this.period,
    this.description,
  });

  factory PreviousJobDetails.fromJson(Map<String, dynamic> json) =>
      _$PreviousJobDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PreviousJobDetailsToJson(this);
}

@JsonSerializable(nullable: false)
class AppGallery {
  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'avatarUrl')
  String avatarUrl;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'ratings')
  double ratings;

  @JsonKey(name: 'description')
  String description;

  AppGallery(
      {this.title,
      this.type,
      this.avatarUrl,
      this.url,
      this.ratings,
      this.description});

  factory AppGallery.fromJson(Map<String, dynamic> json) =>
      _$AppGalleryFromJson(json);
  Map<String, dynamic> toJson() => _$AppGalleryToJson(this);
}
