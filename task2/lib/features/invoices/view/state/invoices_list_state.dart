import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sevdesk_task/features/invoices/model/invoice.dart';

final invoicesData = [
  {
    "id": "INV-12345",
    "name": "Invoice 1",
    "createdAt": "2023-10-16T10:00:00Z",
    "amount": 500.00,
    "state": "due"
  },
  {
    "id": "INV-67890",
    "name": "Invoice 2",
    "createdAt": "2023-10-15T14:30:00Z",
    "amount": 750.50,
    "state": "paid"
  },
  {
    "id": "INV-24680",
    "name": "Invoice 3",
    "createdAt": "2023-10-14T16:45:00Z",
    "amount": 1200.75,
    "state": "due"
  },
  {
    "id": "INV-13579",
    "name": "Invoice 4",
    "createdAt": "2023-10-13T09:15:00Z",
    "amount": 300.25,
    "state": "paid"
  },
  {
    "id": "INV-54321",
    "name": "Invoice 5",
    "createdAt": "2023-10-12T11:20:00Z",
    "amount": 950.80,
    "state": "draft"
  },
  {
    "id": "INV-98765",
    "name": "Invoice 6",
    "createdAt": "2023-10-11T13:40:00Z",
    "amount": 700.00,
    "state": "unpaid"
  },
  {
    "id": "INV-11223",
    "name": "Invoice 7",
    "createdAt": "2023-10-10T15:55:00Z",
    "amount": 1500.25,
    "state": "draft"
  },
  {
    "id": "INV-44556",
    "name": "Invoice 8",
    "createdAt": "2023-10-09T08:10:00Z",
    "amount": 420.30,
    "state": "paid"
  },
  {
    "id": "INV-66778",
    "name": "Invoice 9",
    "createdAt": "2023-10-08T20:25:00Z",
    "amount": 800.50,
    "state": "due"
  },
  {
    "id": "INV-99001",
    "name": "Invoice 10",
    "createdAt": "2023-10-07T22:35:00Z",
    "amount": 1100.75,
    "state": "paid"
  },
  {
    "id": "INV-11222",
    "name": "Invoice 11",
    "createdAt": "2023-10-06T18:45:00Z",
    "amount": 670.90,
    "state": "unpaid"
  },
  {
    "id": "INV-33444",
    "name": "Invoice 12",
    "createdAt": "2023-10-05T12:55:00Z",
    "amount": 950.20,
    "state": "draft"
  },
  {
    "id": "INV-55666",
    "name": "Invoice 13",
    "createdAt": "2023-10-04T07:05:00Z",
    "amount": 200.75,
    "state": "paid"
  },
  {
    "id": "INV-77888",
    "name": "Invoice 14",
    "createdAt": "2023-10-03T01:15:00Z",
    "amount": 1350.60,
    "state": "due"
  },
  {
    "id": "INV-99000",
    "name": "Invoice 15",
    "createdAt": "2023-10-02T03:25:00Z",
    "amount": 300.00,
    "state": "paid"
  },
  {
    "id": "INV-11220",
    "name": "Invoice 16",
    "createdAt": "2023-10-01T05:35:00Z",
    "amount": 700.50,
    "state": "draft"
  },
  {
    "id": "INV-33440",
    "name": "Invoice 17",
    "createdAt": "2023-09-30T17:45:00Z",
    "amount": 920.75,
    "state": "unpaid"
  }
];

final selectedInvoiceStateProvider =
    StateProvider<InvoiceState>((ref) => InvoiceState.all);

final invoicesProvider = StateProvider<List<Invoice>>((ref) {
  final invoicesList = invoicesData.map((e) => Invoice.fromJson(e)).toList();
  final invoiceState = ref.watch(selectedInvoiceStateProvider);
  return invoicesList
      .where((element) => invoiceState == InvoiceState.all
          ? true
          : element.state == invoiceState)
      .toList();
});
