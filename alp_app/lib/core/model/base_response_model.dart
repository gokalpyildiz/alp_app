import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable()
class BaseResponseModel {
  bool? success;
  int? count;
  String? message;
  BaseResponseModel({this.success, this.count, this.message});

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) => _$BaseResponseModelFromJson(json);

  Map<String, dynamic> toJson() {
    return _$BaseResponseModelToJson(this);
  }
}

abstract class IBaseResponse<T> extends BaseResponseModel {
  T? get data;
}
