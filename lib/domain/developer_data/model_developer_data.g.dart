// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_developer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelDeveloperData _$ModelDeveloperDataFromJson(Map<String, dynamic> json) {
  return ModelDeveloperData(
    basic: BasicDetails.fromJson(json['basic'] as Map<String, dynamic>),
    previousJobDetails: (json['previousJobDetails'] as List)
        .map((e) => PreviousJobDetails.fromJson(e as Map<String, dynamic>))
        .toList(),
    appGallery: (json['appGallery'] as List)
        .map((e) => AppGallery.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ModelDeveloperDataToJson(ModelDeveloperData instance) =>
    <String, dynamic>{
      'basic': instance.basic,
      'previousJobDetails': instance.previousJobDetails,
      'appGallery': instance.appGallery,
    };

BasicDetails _$BasicDetailsFromJson(Map<String, dynamic> json) {
  return BasicDetails(
    name: json['name'] as String,
    address: json['address'] as String,
    designation: json['designation'] as String,
    tools: json['tools'] as String,
    mailID: json['mailID'] as String,
    contactNo: json['contactNo'] as String,
    image: json['image'] as String,
    githubUrl: json['githubUrl'] as String,
    resumeUrl: json['resumeUrl'] as String,
  );
}

Map<String, dynamic> _$BasicDetailsToJson(BasicDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'designation': instance.designation,
      'tools': instance.tools,
      'mailID': instance.mailID,
      'contactNo': instance.contactNo,
      'image': instance.image,
      'githubUrl': instance.githubUrl,
      'resumeUrl': instance.resumeUrl,
    };

PreviousJobDetails _$PreviousJobDetailsFromJson(Map<String, dynamic> json) {
  return PreviousJobDetails(
    designation: json['designation'] as String,
    companyName: json['companyName'] as String,
    companyLogo: json['companyLogo'] as String,
    companyLocation: json['companyLocation'] as String,
    period: json['period'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$PreviousJobDetailsToJson(PreviousJobDetails instance) =>
    <String, dynamic>{
      'designation': instance.designation,
      'companyName': instance.companyName,
      'companyLogo': instance.companyLogo,
      'companyLocation': instance.companyLocation,
      'period': instance.period,
      'description': instance.description,
    };

AppGallery _$AppGalleryFromJson(Map<String, dynamic> json) {
  return AppGallery(
    title: json['title'] as String,
    type: json['type'] as String,
    avatarUrl: json['avatarUrl'] as String,
    url: json['url'] as String,
    ratings: (json['ratings'] as num).toDouble(),
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$AppGalleryToJson(AppGallery instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'avatarUrl': instance.avatarUrl,
      'url': instance.url,
      'ratings': instance.ratings,
      'description': instance.description,
    };
