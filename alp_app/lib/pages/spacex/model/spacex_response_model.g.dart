// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacex_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpacexResponseModel _$SpacexResponseModelFromJson(Map<String, dynamic> json) =>
    SpacexResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SpacexModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..success = json['success'] as bool?
      ..count = json['count'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$SpacexResponseModelToJson(
        SpacexResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'count': instance.count,
      'message': instance.message,
      'data': instance.data,
    };
