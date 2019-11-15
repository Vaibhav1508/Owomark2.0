import 'package:flutter/cupertino.dart';


class EventItem {
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

  factory EventItem.fromMap(Map<String, dynamic> map) {
    return new EventItem(
      id: map['id'] as String,
      name: map['title'] as String,
      imageUrl: map['img'] as String,

    );
  }

  EventItem({
    @required this.id,
    @required this.name,
    @required this.imageUrl,
  });

}
