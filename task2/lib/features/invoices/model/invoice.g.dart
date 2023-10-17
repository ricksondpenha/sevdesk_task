// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      createdAt: DateTime.parse(json['createdAt'] as String),
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      state: $enumDecodeNullable(_$InvoiceStateEnumMap, json['state']) ??
          InvoiceState.draft,
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'amount': instance.amount,
      'state': _$InvoiceStateEnumMap[instance.state]!,
    };

const _$InvoiceStateEnumMap = {
  InvoiceState.all: 'all',
  InvoiceState.draft: 'draft',
  InvoiceState.unpaid: 'unpaid',
  InvoiceState.due: 'due',
  InvoiceState.paid: 'paid',
  InvoiceState.partialPaid: 'partialPaid',
  InvoiceState.cancelled: 'cancelled',
};
