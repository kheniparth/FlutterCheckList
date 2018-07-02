import 'package:flutter_app/model/ListItem.dart';

class StepClass implements ListItem {
  final int id;
  final String name;
  final String type;
  final String checklist;
  final String content;
  String _notes = "";
  String _imageUrl = "";
  bool isDone = false;

  StepClass({this.id, this.name, this.type, this.checklist, this.content});

  factory StepClass.fromJson(Map<String, dynamic> json) {
    return StepClass(
        id: json['id'] as int,
        name: json['name'] as String,
        type: json['type'] as String,
        checklist: json['checklist'] as String,
        content: json['content'] as String
    );
  }

  String get notes => _notes;
  set notes(String notes) {
    _notes = notes;
  }

  String get imageUrl => _imageUrl;
  set imageUrl(String imageUrl) {
    _imageUrl = imageUrl;
  }
}