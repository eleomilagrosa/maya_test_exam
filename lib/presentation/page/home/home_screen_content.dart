import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:maya_test_exam/common/routes.dart';
import 'package:maya_test_exam/domain/entity/user_entity.dart';
import 'package:maya_test_exam/presentation/widget/custom_rounded_button.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({required this.user, super.key});
  final UserEntity? user;

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  TextTheme get textTheme => Theme.of(context).textTheme;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  'PHP ${widget.user?.balance.toStringAsFixed(2).toPriceLabel.obscureText(_obscureText)}',
                  style: textTheme.displayLarge,
                )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      !_obscureText
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                    )),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Total Savings",
              style: textTheme.displaySmall,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomRoundedButton(
                      buttonName: "Send Money",
                      icon: Icons.trending_up_rounded,
                      onTap: () async {
                        await context.pushNamed(AppRoutes.sendMoneyName);
                        setState(() {});
                      }),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: CustomRoundedButton(
                      buttonName: "History",
                      icon: Icons.history,
                      onTap: () {
                        context.goNamed(AppRoutes.transactionHistoryName);
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
