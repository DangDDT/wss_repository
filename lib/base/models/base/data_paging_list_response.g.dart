// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_paging_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPagingListResponse<T> _$DataPagingListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataPagingListResponse<T>(
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      page: json['page'] as int?,
      size: json['size'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$DataPagingListResponseToJson<T>(
  DataPagingListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data?.map(toJsonT).toList(),
      'page': instance.page,
      'size': instance.size,
      'total': instance.total,
    };
