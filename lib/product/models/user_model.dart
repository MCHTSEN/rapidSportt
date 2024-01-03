// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserModel with EquatableMixin {
  String? uid;
  String? name;
  String? surname;
  String? email;
  String? phone;
  String? type;
  String? profilePhoto;
  String? birthDate;
  String? branch;
  String? lat;
  String? lng;

  LatLng get latlong => LatLng(
      double.tryParse(lat ?? '0') ?? 0, double.tryParse(lng ?? '0') ?? 0);

  UserModel({
    this.uid,
    this.name,
    this.surname,
    this.email,
    this.phone,
    this.type,
    this.profilePhoto,
    this.birthDate,
    this.branch,
    this.lat,
    this.lng,
  });

  @override
  List<Object?> get props => [
        uid,
        name,
        surname,
        email,
        phone,
        type,
        profilePhoto,
        birthDate,
        branch,
        lat,
        lng
      ];

  UserModel copyWith({
    String? uid,
    String? name,
    String? surname,
    String? email,
    String? phone,
    String? type,
    String? profilePhoto,
    String? birthDate,
    String? branch,
    String? lat,
    String? lng,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      type: type ?? this.type,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      birthDate: birthDate ?? this.birthDate,
      branch: branch ?? this.branch,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'surname': surname,
      'email': email,
      'phone': phone,
      'type': type,
      'profilePhoto': profilePhoto,
      'birthDate': birthDate,
      'branch': branch,
      'lat': lat,
      'lng': lng,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      type: json['type'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      birthDate: json['birthDate'] as String?,
      branch: json['branch'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );
  }
}

// class UserModel with EquatableMixin {
//   String? uid;
//   String? name;
//   String? surname;
//   String? email;
//   Geo? geo;
//   String? phone;
//   String? type;
//   String? profilePhoto;
//   String? birthDate;
//   String? branch;

//   UserModel({
//     this.uid,
//     this.name,
//     this.surname,
//     this.email,
//     this.geo,
//     this.phone,
//     this.type,
//     this.profilePhoto,
//     this.birthDate,
//     this.branch,
//   });

//   @override
//   List<Object?> get props => [
//         uid,
//         name,
//         surname,
//         email,
//         geo,
//         phone,
//         type,
//         profilePhoto,
//         birthDate,
//         branch
//       ];

//   UserModel copyWith({
//     String? uid,
//     String? name,
//     String? surname,
//     String? email,
//     Geo? geo,
//     String? phone,
//     String? type,
//     String? profilePhoto,
//     String? birthDate,
//     String? branch,
//   }) {
//     return UserModel(
//       uid: uid ?? this.uid,
//       name: name ?? this.name,
//       surname: surname ?? this.surname,
//       email: email ?? this.email,
//       geo: geo ?? this.geo,
//       phone: phone ?? this.phone,
//       type: type ?? this.type,
//       profilePhoto: profilePhoto ?? this.profilePhoto,
//       birthDate: birthDate ?? this.birthDate,
//       branch: branch ?? this.branch,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'uid': uid,
//       'name': name,
//       'surname': surname,
//       'email': email,
//       'geo': geo,
//       'phone': phone,
//       'type': type,
//       'profilePhoto': profilePhoto,
//       'birthDate': birthDate,
//       'branch': branch,
//     };
//   }

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       uid: json['uid'] as String?,
//       name: json['name'] as String?,
//       surname: json['surname'] as String?,
//       email: json['email'] as String?,
//       geo: json['geo'] == null
//           ? null
//           : Geo.fromJson(json['geo'] as Map<String, dynamic>),
//       phone: json['phone'] as String?,
//       type: json['type'] as String?,
//       profilePhoto: json['profilePhoto'] as String?,
//       birthDate: json['birthDate'] as String?,
//       branch: json['branch'] as String?,
//     );
//   }
// }

class Geo with EquatableMixin {
  String? lat;
  String? lng;

  Geo({
    this.lat,
    this.lng,
  });

  @override
  List<Object?> get props => [lat, lng];

  Geo copyWith({
    String? lat,
    String? lng,
  }) {
    return Geo(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );
  }
}
