import 'package:freezed_annotation/freezed_annotation.dart';
part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  factory Invoice({
    required String id,
    @Default('') String name,
    required DateTime createdAt,
    @Default(0.0) double amount,
    @Default(InvoiceState.draft) InvoiceState state,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}

enum InvoiceState {
  all,
  draft,
  unpaid,
  due,
  paid,
  partialPaid,
  cancelled,
}
