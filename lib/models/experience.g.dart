// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Experience _$ExperienceFromJson(Map<String, dynamic> json) => Experience(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  category: json['category'] as String,
  thumbnail: json['thumbnail'] as String?,
  startedAt: DateTime.parse(json['started_at'] as String),
  endedAt: json['ended_at'] == null
      ? null
      : DateTime.parse(json['ended_at'] as String),
  isOngoing: json['is_ongoing'] as bool,
  starCount: (json['star_count'] as num).toInt(),
  isStarred: json['is_starred'] as bool,
  starredByNames: json['starred_by_names'] as String,
);

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'is_ongoing': instance.isOngoing,
      'star_count': instance.starCount,
      'is_starred': instance.isStarred,
      'starred_by_names': instance.starredByNames,
    };
