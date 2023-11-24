import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'task.g.dart';

@JsonSerializable()
class Task {
  Task(this.name, this.description, this.duration);

  String name;
  String description;
  bool isCompleted = false;
  int duration;
  String uuid = const Uuid().v1();

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
