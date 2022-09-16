import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_data.freezed.dart';

@freezed
class ChartData with _$ChartData {
  const factory ChartData(String x, num y, [Color? color]) = _ChartData;
}
