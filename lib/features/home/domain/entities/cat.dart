// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hotkot/features/home/domain/entities/image.dart';

class Cat extends Equatable {
  final int? id;
  final String? imageId;
  final String? subId;
  final String? createdAt;
  final int? value;
  final String? countryCode;
  final MyImage? image;
  const Cat({
    this.id,
    this.imageId,
    this.subId,
    this.createdAt,
    this.value,
    this.countryCode,
    this.image,
  });

  @override
  List<Object?> get props {
    return [
      id,
      imageId,
      subId,
      createdAt,
      value,
      countryCode,
      image,
    ];
  }

  Cat copyWith({
    int? id,
    String? imageId,
    String? subId,
    String? createdAt,
    int? value,
    String? countryCode,
    MyImage? image,
  }) {
    return Cat(
      id: id ?? this.id,
      imageId: imageId ?? this.imageId,
      subId: subId ?? this.subId,
      createdAt: createdAt ?? this.createdAt,
      value: value ?? this.value,
      countryCode: countryCode ?? this.countryCode,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageId': imageId,
      'subId': subId,
      'createdAt': createdAt,
      'value': value,
      'countryCode': countryCode,
      'image': image?.toMap(),
    };
  }

  factory Cat.fromMap(Map<String, dynamic> map) {
    return Cat(
      id: map['id'] != null ? map['id'] as int : null,
      imageId: map['imageId'] != null ? map['imageId'] as String : null,
      subId: map['subId'] != null ? map['subId'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      value: map['value'] != null ? map['value'] as int : null,
      countryCode:
          map['countryCode'] != null ? map['countryCode'] as String : null,
      image: map['image'] != null
          ? MyImage.fromMap(map['image'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cat.fromJson(String source) =>
      Cat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}

