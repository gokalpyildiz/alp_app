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
  DateTime? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? net;
  int? window;
  Rocket? rocket;
  bool? success;
  List<Failure>? failures;
  String? details;
  List<String>? crew;
  List<String>? ships;
  List<String>? capsules;
  List<String>? payloads;
  Launchpad? launchpad;
  int? flightNumber;
  String? name;
  DateTime? dateUtc;
  int? dateUnix;
  DateTime? dateLocal;
  DatePrecision? datePrecision;
  bool? upcoming;
  List<Core>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? launchLibraryId;
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

  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  bool? landingSuccess;
  LandingType? landingType;
  Landpad? landpad;

  factory Core.fromJson(Map<String, dynamic> json) {
    return _$CoreFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CoreToJson(this);
  }
}

enum LandingType { OCEAN, ASDS, RTLS }

enum Landpad {
  THE_5_E9_E3032383_ECB761634_E7_CB,
  THE_5_E9_E3032383_ECB6_BB234_E7_CA,
  THE_5_E9_E3032383_ECB267_A34_E7_C7,
  THE_5_E9_E3033383_ECBB9_E534_E7_CC,
  THE_5_E9_E3032383_ECB90_A834_E7_C8,
  THE_5_E9_E3032383_ECB554034_E7_C9,
  THE_5_E9_E3033383_ECB075134_E7_CD
}

enum DatePrecision { HOUR, DAY, MONTH }

@JsonSerializable()
class Failure {
  Failure({
    this.time,
    this.altitude,
    this.reason,
  });

  int? time;
  int? altitude;
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

  bool? reused;
  bool? recoveryAttempt;
  bool? recovered;
  List<String>? ships;

  factory Fairings.fromJson(Map<String, dynamic> json) {
    return _$FairingsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FairingsToJson(this);
  }
}

enum Launchpad {
  THE_5_E9_E4502_F5090995_DE566_F86,
  THE_5_E9_E4501_F509094_BA4566_F84,
  THE_5_E9_E4502_F509092_B78566_F87,
  THE_5_E9_E4502_F509094188566_F88
}

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

  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  String? presskit;
  String? webcast;
  String? youtubeId;
  String? article;
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

  List<dynamic>? small;
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

  String? small;
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

  String? campaign;
  String? launch;
  String? media;
  String? recovery;

  factory Reddit.fromJson(Map<String, dynamic> json) {
    return _$RedditFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RedditToJson(this);
  }
}

enum Rocket { THE_5_E9_D0_D95_EDA69955_F709_D1_EB, THE_5_E9_D0_D95_EDA69973_A809_D1_EC, THE_5_E9_D0_D95_EDA69974_DB09_D1_ED }
