import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  final Map<String, List<String>>? data;

  ApiErrorModel({required this.message, this.code, this.data});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  /// The validation errors in [data] joined into one string when present,
  /// falling back to [message] otherwise.
  String get displayMessage {
    if (data != null && data!.isNotEmpty) {
      return data!.values.expand((errors) => errors).join(', ');
    }
    return message ?? '';
  }
}
