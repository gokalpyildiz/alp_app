import 'package:alp_app/core/model/base_response_model.dart';
import 'package:alp_app/pages/spacex/model/spacex_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'spacex_response_model.g.dart';

@JsonSerializable()
class SpacexResponseModel extends IBaseResponse<List<SpacexModel>> {
  @override
  List<SpacexModel>? data;
  SpacexResponseModel({this.data});

  factory SpacexResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SpacexResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$SpacexResponseModelToJson(this);
  }
}
