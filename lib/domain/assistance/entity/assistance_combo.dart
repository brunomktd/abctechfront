import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistance_combo.freezed.dart';
part 'assistance_combo.g.dart';

@freezed
class AssistanceCombo with _$AssistanceCombo {
  const factory AssistanceCombo({
    required int id,
    required String name,
    required String description,
  }) = _AssistanceCombo;
  factory AssistanceCombo.fromJson(Map<String, dynamic> json) => _$AssistanceComboFromJson(json);
}
