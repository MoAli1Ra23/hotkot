import 'dart:convert';

import 'package:equatable/equatable.dart';

class MyImage extends Equatable {
  final String? id;
  final String? url;

  const MyImage({
    required this.id,
    required this.url,
  });

  MyImage copyWith({
    String? id,
    String? url,
  }) {
    return MyImage(
      id: id ?? this.id,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'url': url,
    };
  }

  factory MyImage.fromMap(Map<String, dynamic> map) {
    return MyImage(
      id: map['id'] != null ? map['id'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyImage.fromJson(String source) =>
      MyImage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, url];
}
