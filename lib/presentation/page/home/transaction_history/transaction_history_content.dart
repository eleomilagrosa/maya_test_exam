import 'package:flutter/material.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

class TransactionHistoryContent extends StatelessWidget {
  const TransactionHistoryContent({super.key, required this.transactions});
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          var item = transactions[index];
          bool hasDateTitle = false;
          Transaction? previous;
          if (index != 0) {
            previous = transactions[index - 1];
          } else {
            hasDateTitle = true;
          }
          if (!hasDateTitle &&
              previous?.createdAt != null &&
              item.createdAt != null) {
            bool isSameDay = item.createdAt!.isSameDay(previous!.createdAt!);
            hasDateTitle = !isSameDay;
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (hasDateTitle)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text(
                        "${item.createdAt?.toMonthDayString()}",
                        style: textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              Card(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Send Money - Maya"),
                          Text(item.createdAt?.toTimeString() ?? ''),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Amount"),
                          Text(
                              '- PHP ${item.amount?.toStringAsFixed(2).toPriceLabel ?? ''}'),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Running Balance"),
                          Text(
                              'PHP ${item.balance?.toStringAsFixed(2).toPriceLabel ?? ''}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
