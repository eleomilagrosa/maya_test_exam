import 'package:flutter/material.dart';
import 'package:maya_test_exam/common/assets.dart';
import 'package:maya_test_exam/common/colors.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

class SendMoneySuccessDialog extends StatelessWidget {
  const SendMoneySuccessDialog({required this.transaction, super.key});

  static Future showDialog(BuildContext context,
      {required Transaction transaction}) async {
    return await showModalBottomSheet(
      context: context,
      backgroundColor: ColorLight.card,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return SendMoneySuccessDialog(transaction: transaction);
      },
    );
  }

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Transaction Details",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _ItemDetailRow(
              title: "Amount",
              value: "- PHP ${transaction.amount?.toStringAsFixed(2)}"),
          _ItemDetailRow(
              title: "Balance",
              value: "PHP ${transaction.balance?.toStringAsFixed(2)}"),
          _ItemDetailRow(
              title: "Previous Balance",
              value: "PHP ${transaction.previousBalance?.toStringAsFixed(2)}"),
          _ItemDetailRow(
            title: "Created At",
            value: transaction.createdAt?.toEEddMMyyyyhhmmaString() ?? '',
          ),
          Image.asset(
            AppAssets.successIcon,
            height: 100,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
  }
}

class _ItemDetailRow extends StatelessWidget {
  const _ItemDetailRow({
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
