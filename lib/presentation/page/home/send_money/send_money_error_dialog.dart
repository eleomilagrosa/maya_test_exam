import 'package:flutter/material.dart';
import 'package:maya_test_exam/common/assets.dart';
import 'package:maya_test_exam/common/colors.dart';

class SendMoneyErrorDialog extends StatelessWidget {
  const SendMoneyErrorDialog({super.key});

  static Future showDialog(BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      backgroundColor: ColorLight.card,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return const SendMoneyErrorDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Transaction Error",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Row(
            children: [
              Expanded(
                  child: Text(
                "Please Try Again",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
            ],
          ),
          const SizedBox(height: 16),
          Image.asset(
            AppAssets.errorIcon,
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
