// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      json['name'] as String,
      json['description'] as String,
      json['duration'] as int,
    )
      ..isCompleted = json['isCompleted'] as bool
      ..uuid = json['uuid'] as String;

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'duration': instance.duration,
      'uuid': instance.uuid,
    };
