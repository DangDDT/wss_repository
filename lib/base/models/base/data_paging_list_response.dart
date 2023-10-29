// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_response.dart';

part 'data_paging_list_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DataPagingListResponse<T> extends BaseListResponse<T> {
  DataPagingListResponse({
    @JsonKey(name: 'data') this.data,
    @JsonKey(name: 'page') this.page,
    @JsonKey(name: 'size') this.size,
    @JsonKey(name: 'total') this.total,
  });

  // ignore: avoid-dynamic
  factory DataPagingListResponse.fromJson(
          Map<String, dynamic> json, T Function(dynamic) fromJsonT) =>
      _$DataPagingListResponseFromJson(json, fromJsonT);

  final List<T>? data;
  final int? page;
  final int? size;
  final int? total;

  @override
  List<T>? get baseDatas => data;
}
