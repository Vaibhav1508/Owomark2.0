import 'package:flutter/cupertino.dart';


class ProjectItem {
  String id = "";
  String name = "";
  String imageUrl = "";

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.name,
      'img': this.imageUrl,

    };
  }

  factory ProjectItem.fromMap(Map<String, dynamic> map) {
    return new ProjectItem(
      id: map['id'] as String,
      name: map['title'] as String,
      imageUrl: map['img'] as String,

    );
  }

  ProjectItem({
    @required this.id,
    @required this.name,
    @required this.imageUrl,
  });

}
