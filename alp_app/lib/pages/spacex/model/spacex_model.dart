// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'spacex_model.g.dart';

@JsonSerializable()
class SpacexModel {
  SpacexModel({
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.failures,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
    this.autoUpdate,
    this.tbd,
    this.launchLibraryId,
    this.id,
  });

  Fairings? fairings;
  Links? links;
  @JsonKey(name: "static_fire_date_utc")
  DateTime? staticFireDateUtc;
  @JsonKey(name: "static_fire_date_unix")
  int? staticFireDateUnix;
  @JsonKey(name: "net")
  bool? net;
  @JsonKey(name: "window")
  int? window;
  @JsonKey(name: "rocket")
  String? rocket;
  @JsonKey(name: "success")
  bool? success;
  List<Failure>? failures;
  @JsonKey(name: "details")
  String? details;
  @JsonKey(name: "crew")
  List<String>? crew;
  @JsonKey(name: "ships")
  List<String>? ships;
  @JsonKey(name: "capsules")
  List<String>? capsules;
  @JsonKey(name: "payloads")
  List<String>? payloads;
  @JsonKey(name: "launchpad")
  String? launchpad;
  @JsonKey(name: "flight_number")
  int? flightNumber;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "date_utc")
  DateTime? dateUtc;
  @JsonKey(name: "date_unix")
  int? dateUnix;
  @JsonKey(name: "date_local")
  DateTime? dateLocal;
  @JsonKey(name: "date_precision")
  String? datePrecision;
  @JsonKey(name: "upcoming")
  bool? upcoming;
  List<Core>? cores;
  @JsonKey(name: "auto_update")
  bool? autoUpdate;
  @JsonKey(name: "tbd")
  bool? tbd;
  @JsonKey(name: "launch_library_id")
  String? launchLibraryId;
  @JsonKey(name: "id")
  String? id;

  factory SpacexModel.fromJson(Map<String, dynamic> json) {
    return _$SpacexModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SpacexModelToJson(this);
  }
}

@JsonSerializable()
class Core {
  Core({
    this.core,
    this.flight,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingAttempt,
    this.landingSuccess,
    this.landingType,
    this.landpad,
  });

  @JsonKey(name: "core")
  String? core;
  @JsonKey(name: "flight")
  int? flight;
  @JsonKey(name: "gridfins")
  bool? gridfins;
  @JsonKey(name: "legs")
  bool? legs;
  @JsonKey(name: "reused")
  bool? reused;
  @JsonKey(name: "landing_attempt")
  bool? landingAttempt;
  @JsonKey(name: "landing_success")
  bool? landingSuccess;
  @JsonKey(name: "landing_type")
  String? landingType;
  @JsonKey(name: "landpad")
  String? landpad;

  factory Core.fromJson(Map<String, dynamic> json) {
    return _$CoreFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CoreToJson(this);
  }
}

// enum LandingType { OCEAN, ASDS, RTLS }

// enum Landpad {
//   THE_5_E9_E3032383_ECB761634_E7_CB,
//   THE_5_E9_E3032383_ECB6_BB234_E7_CA,
//   THE_5_E9_E3032383_ECB267_A34_E7_C7,
//   THE_5_E9_E3033383_ECBB9_E534_E7_CC,
//   THE_5_E9_E3032383_ECB90_A834_E7_C8,
//   THE_5_E9_E3032383_ECB554034_E7_C9,
//   THE_5_E9_E3033383_ECB075134_E7_CD
// }

// enum DatePrecision { HOUR, DAY, MONTH }

@JsonSerializable()
class Failure {
  Failure({
    this.time,
    this.altitude,
    this.reason,
  });
  @JsonKey(name: "time")
  int? time;
  @JsonKey(name: "altitude")
  int? altitude;
  @JsonKey(name: "reason")
  String? reason;

  factory Failure.fromJson(Map<String, dynamic> json) {
    return _$FailureFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FailureToJson(this);
  }
}

@JsonSerializable()
class Fairings {
  Fairings({
    this.reused,
    this.recoveryAttempt,
    this.recovered,
    this.ships,
  });
  @JsonKey(name: "reused")
  bool? reused;
  @JsonKey(name: "recovery_attempt")
  bool? recoveryAttempt;
  @JsonKey(name: "recovered")
  bool? recovered;
  @JsonKey(name: "ships")
  List<String>? ships;

  factory Fairings.fromJson(Map<String, dynamic> json) {
    return _$FairingsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FairingsToJson(this);
  }
}

// enum Launchpad {
//   THE_5_E9_E4502_F5090995_DE566_F86,
//   THE_5_E9_E4501_F509094_BA4566_F84,
//   THE_5_E9_E4502_F509092_B78566_F87,
//   THE_5_E9_E4502_F509094188566_F88
// }

@JsonSerializable()
class Links {
  Links({
    this.patch,
    this.reddit,
    this.flickr,
    this.presskit,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });
  @JsonKey(name: "patch")
  Patch? patch;
  @JsonKey(name: "reddit")
  Reddit? reddit;
  @JsonKey(name: "flickr")
  Flickr? flickr;
  @JsonKey(name: "presskit")
  String? presskit;
  @JsonKey(name: "webcast")
  String? webcast;
  @JsonKey(name: "youtube_id")
  String? youtubeId;
  @JsonKey(name: "article")
  String? article;
  @JsonKey(name: "wikipedia")
  String? wikipedia;

  factory Links.fromJson(Map<String, dynamic> json) {
    return _$LinksFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LinksToJson(this);
  }
}

@JsonSerializable()
class Flickr {
  Flickr({
    this.small,
    this.original,
  });
  @JsonKey(name: "small")
  List<dynamic>? small;
  @JsonKey(name: "original")
  List<String>? original;

  factory Flickr.fromJson(Map<String, dynamic> json) {
    return _$FlickrFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FlickrToJson(this);
  }
}

@JsonSerializable()
class Patch {
  Patch({
    this.small,
    this.large,
  });
  @JsonKey(name: "small")
  String? small;
  @JsonKey(name: "large")
  String? large;

  factory Patch.fromJson(Map<String, dynamic> json) {
    return _$PatchFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PatchToJson(this);
  }
}

@JsonSerializable()
class Reddit {
  Reddit({
    this.campaign,
    this.launch,
    this.media,
    this.recovery,
  });
  @JsonKey(name: "campaign")
  String? campaign;
  @JsonKey(name: "launch")
  String? launch;
  @JsonKey(name: "media")
  String? media;
  @JsonKey(name: "recovery")
  String? recovery;

  factory Reddit.fromJson(Map<String, dynamic> json) {
    return _$RedditFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RedditToJson(this);
  }
}

// enum Rocket { THE_5_E9_D0_D95_EDA69955_F709_D1_EB, THE_5_E9_D0_D95_EDA69973_A809_D1_EC, THE_5_E9_D0_D95_EDA69974_DB09_D1_ED }
