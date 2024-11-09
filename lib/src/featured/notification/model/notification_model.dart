import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    required int id,
    required String title,
    required String subTitle,
    required String date,
    required String type,
    required bool status,
    required String color,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, Object?> json)
      => _$NotificationModelFromJson(json);
}
