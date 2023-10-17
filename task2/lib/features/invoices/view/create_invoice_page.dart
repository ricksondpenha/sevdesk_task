import 'package:flutter/material.dart';
import 'package:sevdesk_task/features/invoices/view/components/choose_contact_tile.dart';
import 'package:sevdesk_task/features/invoices/view/components/details_form.dart';
import 'package:sevdesk_task/features/invoices/view/components/finish_button.dart';
import 'package:sevdesk_task/features/invoices/view/components/text_section.dart';

class CreateInvoicePage extends StatelessWidget {
  const CreateInvoicePage({super.key});

  static const String routeName = 'create-invoice-page';
  static const String routePath = '/createInvoice';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Invoice'),
      ),
      body: ListView(
        children: const [
          ChooseContactTile(),
          DetailsForm(),
          TextSection(
            title: 'HEADER TEXT',
            content:
                'Sehr geehrte Damen und Herren, vielen Dank für Ihren Auftrag und das damit verbundene Vertrauen! Hiermit stelle ich Ihnen die folgenden Leistungen in Rechnung:',
          ),
          TextSection(
            title: 'FOOTER TEXT',
            content:
                'Bitte überweisen Sie den Rechnungsbetrag unter Angabe der Rechnungsnummer auf das unten angegebene Konto. Der Rechnungsbetrag ist sofort fällig.',
          ),
        ],
      ),
      bottomNavigationBar: const FinishButton(),
    );
  }
}
